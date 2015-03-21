class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.boolean :confirm

      t.timestamps
    end
  end
end
