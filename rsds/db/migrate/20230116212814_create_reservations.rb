class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.belongs_to :court
      t.boolean :lookingForPlayer
      t.datetime :reservationDate
      t.datetime :reservationStartTime
      t.datetime :reservationEndTime
      t.integer :cost

      t.timestamps
    end
  end
end
