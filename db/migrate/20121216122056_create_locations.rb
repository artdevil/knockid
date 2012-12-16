class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :user_id
      t.string :address
      t.string :latitude
      t.string :longnitude
      t.string :home_avatar
      t.string :verification
      t.boolean :confirm

      t.timestamps
    end
  end
end
