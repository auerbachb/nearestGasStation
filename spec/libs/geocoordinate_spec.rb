require 'rails_helper'

RSpec.describe Geocoordinate do
  it 'can load the location of nearest gas station' do
    lat = 37.77801
    lng = -122.4119076
    result = Geocoordinate.nearest_gas_station({lat: lat, lng: lng})
    nearest_gas_station = { streetAddress: "2300 16th St", city: "San Francisco", state: "CA", postalCode: "94103" }
    expect(result).to eq nearest_gas_station
  end

  it 'not found the nearest gas station' do
    lat = 30.0576504
    lng = -124.002289
    result = Geocoordinate.nearest_gas_station({lat: lat, lng: lng})
    not_found = { status: -1, msg: "not found any gas station" }
    expect(result).to eq not_found
  end

  it 'can load the location geocoordinate' do
    lat = 37.77801
    lng = -122.4119076
    result = Geocoordinate.location_geocoordinate({lat: lat, lng: lng})
    location_geocoordinate = { streetAddress: "1155 Mission St", city: "San Francisco", state: "CA", postalCode: "94103-1514"}
    expect(result).to eq location_geocoordinate
  end

  it 'not load the location geocoordinate' do
    lat = 30.0576504
    lng = -124.002289
    result = Geocoordinate.location_geocoordinate({lat: lat, lng: lng})
    not_load = { status: -1, msg: "not load the location geocoordinate" }
    expect(result).to eq not_load
  end
end
