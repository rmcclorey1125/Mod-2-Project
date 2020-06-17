class RemoveColumnFromReservations < ActiveRecord::Migration[6.0]
  def change
    remove_column :reservations, :time, :datetime
  end
end
