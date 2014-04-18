class RemoveDateTimeFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :date, :string
    remove_column :reservations, :time, :string
  end
end
