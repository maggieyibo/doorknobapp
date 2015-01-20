class Listing
  include Mongoid::Document
  field :type, type: String
  field :city, type: String
  field :num_bed, type: Integer
  field :num_bath, type: Integer
  field :price, type: String
  field :integer, type: String
  field :description, type: String
end
