class AddContactToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cep, :string
    add_column :users, :street, :string
    add_column :users, :house_number, :integer
    add_column :users, :complement, :string
    add_column :users, :neighborhood, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
  end
end
