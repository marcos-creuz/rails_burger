class OrdersController < ApplicationController
  before_action :authenticate_user!

  def new
    @breads = Ingredient.all.where(category: "bread")
    @meats = Ingredient.all.where(category: "meat")
    @salads = Ingredient.all.where(category: "salad")
    @cheeses = Ingredient.all.where(category: "cheese")
    @sauces = Ingredient.all.where(category: "sauce")
    @miscs = Ingredient.all.where(category: "misc")

    @burgers = Product.all
    @additionals = Ingredient.all.where(is_additional: true)
  end

end
