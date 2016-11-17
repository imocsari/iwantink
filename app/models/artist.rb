class Artist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  has_many :booking
  has_many :reviews, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:facebook]

  validates :first_name, :last_name, presence: true, uniqueness: true

  has_attachment :picture
  has_attachments :photos
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def correct_artist?(artist)
      artist == current_artist
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_for_facebook_oauth(auth)
    artist_params = auth.to_h.slice(:provider, :uid)
    artist_params.merge! auth.info.slice(:email, :first_name, :last_name)
    artist_params[:facebook_picture_url] = auth.info.image
    artist_params[:token] = auth.credentials.token
    artist_params[:token_expiry] = Time.at(auth.credentials.expires_at)

    artist = Artist.where(provider: auth.provider, uid: auth.uid).first
    artist ||= Artist.where(email: auth.info.email).first # artist did a regular sign up in the past.
    if artist
      artist.update(artist_params)
    else
      artist = Artists.new(artist_params)
      artist.password = Devise.friendly_token[0,20]  # Fake password for validation
      artist.save
    end

    return artist
  end
end
