class Listing
  include Mongoid::Document
  field :type, type: String
  field :city, type: String
  field :num_bed, type: Integer
  field :num_bath, type: Integer
  field :price, type: Integer
  field :description, type: String
  field :latitude, type: Float
  field :longitude, type: Float
  mount_uploader :photo, ListingPhotoUploader
  belongs_to :user

 	validates :type, presence: true
  validates :city, presence: true
  validates :num_bed, presence: true
  validates :num_bath, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
