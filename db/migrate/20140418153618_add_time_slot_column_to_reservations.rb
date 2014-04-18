class AddTimeSlotColumnToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :timeslot, :string
  end
end
