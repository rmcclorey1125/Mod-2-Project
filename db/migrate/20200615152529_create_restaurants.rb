class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name 
      t.string :address
      t.string :type
      t.integer :restaurant_owner_id

      t.timestamps
    end
  end
end
