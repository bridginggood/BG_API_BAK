class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :bid
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :cid

      t.timestamps
    end
  end
end
