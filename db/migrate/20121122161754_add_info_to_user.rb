class AddInfoToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :birthday, :date
    add_column :users, :avatar, :string
    add_column :users, :identity_image, :string
  end
end
