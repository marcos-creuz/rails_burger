class CreateOrderProducts < ActiveRecord::Migration
  def change
    create_table :order_products do |t|
      t.integer :qt
      t.string :additionals
      t.belongs_to :order, index: true
      t.belongs_to :product, index: true

      t.timestamps null: false
    end
  end
end
