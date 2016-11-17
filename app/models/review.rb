class Review < ApplicationRecord
  belongs_to :artist
  validates :content, :stars, presence: true
  validates :stars, inclusion: {in: (1..5).to_a}
  validates :artist_id, presence: true
end
