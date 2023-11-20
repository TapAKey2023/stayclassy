class AddDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :password, :string
    add_column :users, :photo_url, :string
    add_column :users, :bio, :string
  end
end
