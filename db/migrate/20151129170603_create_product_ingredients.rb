class CreateProductIngredients < ActiveRecord::Migration
  def change
    create_table :product_ingredients do |t|
      t.integer :qt
      t.belongs_to :product, index: true
      t.belongs_to :ingredient, index: true

      t.timestamps null: false
    end
  end
end
