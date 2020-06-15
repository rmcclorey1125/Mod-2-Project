class CreateRestaurantOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurant_owners do |t|
      

      t.timestamps
    end
  end
end
