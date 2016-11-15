class Artist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  validates :first_name, :last_name, presence: true, uniqueness: true
  has_attachment :picture
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
