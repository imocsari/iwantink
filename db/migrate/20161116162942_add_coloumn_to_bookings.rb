class AddColoumnToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :name, :string
    add_column :bookings, :email, :string
    add_column :bookings, :contact, :string
    add_column :bookings, :tattoo_place, :string
    add_column :bookings, :budget, :string
    add_column :bookings, :prefered_date, :datetime
    add_column :bookings, :description, :text
  end
end
