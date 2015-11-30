class IngredientsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :is_admin

  def new
    
  end

  def create
    ing = Ingredient.create(permitted_params)
    redirect_to :back, success: "Ingrediente cadastrado com sucesso!"
  end

  private

  def permitted_params
    params.permit(:name, :price, :category, :is_additional)
  end

end
