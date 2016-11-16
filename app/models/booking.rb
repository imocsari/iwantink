class Booking < ApplicationRecord
  belongs_to :user_id
  belongs_to :artist_id
end
