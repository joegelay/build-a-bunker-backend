class AddEmailToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :email, :string
  end
end
