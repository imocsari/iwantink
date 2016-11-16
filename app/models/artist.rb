class Artist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :booking

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :last_name, presence: true, uniqueness: true

  has_attachment :picture
  has_attachments :photos

  def full_name
    "#{first_name} #{last_name}"
  end
end
