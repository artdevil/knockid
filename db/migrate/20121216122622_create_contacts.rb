class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :location_id
      t.string :type
      t.string :number

      t.timestamps
    end
  end
end
