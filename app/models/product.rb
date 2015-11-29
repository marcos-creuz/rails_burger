class Product < ActiveRecord::Base
  has_many :order_products
  has_many :orders, through: :order_products
  has_many :product_ingredients
  has_many :ingredients, through: :product_ingredients
end
