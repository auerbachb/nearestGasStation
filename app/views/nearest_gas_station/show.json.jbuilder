json.cache! @location, expires_in: 30.minutes do
  json.address Geocoordinate.location_geocoordinate(@location)
  json.nearest_gas_station Geocoordinate.nearest_gas_station(@location)
end
