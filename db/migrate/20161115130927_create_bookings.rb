class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :artist, foreign_key: true
      t.datetime :starts_at
      t.datetime :confirmed_at

      t.timestamps
    end
  end
end
