class ChangeColumnTypeInRestaurants < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :type, :string 
    add_column :restaurants, :restaurant_type, :string 
  end
end
