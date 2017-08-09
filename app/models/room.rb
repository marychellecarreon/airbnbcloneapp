class Room < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :bookings

  geocoded_by :location
  after_validation :geocode, :if => :location_changed?

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "300x300>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
