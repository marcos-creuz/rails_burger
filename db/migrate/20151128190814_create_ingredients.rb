class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.decimal :price
      t.string :category

      t.timestamps null: false
    end
  end
end
