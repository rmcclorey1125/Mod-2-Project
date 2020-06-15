class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.string :date
      t.integer :time
      t.integer :party

      t.timestamps
    end
  end
end
