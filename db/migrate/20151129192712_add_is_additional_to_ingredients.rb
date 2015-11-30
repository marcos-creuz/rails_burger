class AddIsAdditionalToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :is_additional, :boolean
  end
end
