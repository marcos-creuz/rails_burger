class ProductsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :is_admin

  def new
    @ingredients = Ingredient.all
  end

  def create
    prod = Product.new(permitted_params)
    prod.image = save_image_and_return_path

    params[:ingredients].each do |ingredient|
      if ingredient[1][:name].present?
        prod_ings = prod.product_ingredients.build(ingredient: Ingredient.find_by(name: ingredient[1][:name]), qt: ingredient[1][:qt])
        prod_ings.save
      end
    end

    prod.save!

    redirect_to :back, success: "Produto cadastrado com sucesso!"
  end

  private

  def save_image_and_return_path
    image = params[:image]
    File.open(Rails.root.join('app', 'assets', 'images', image.original_filename), 'wb') do |file|
      file.write(image.read)
    end
    image.original_filename
  end

  def permitted_params
    params.permit(:name, :description, :price)
  end

end
