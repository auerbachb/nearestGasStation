class Geocoordinate
  include Mongoid::Document
  field :street_address, type: String
  field :city, type: String
  field :state, type: String
  field :postal_code, type: String
end
