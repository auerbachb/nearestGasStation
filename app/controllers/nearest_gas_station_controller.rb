class NearestGasStationController < ApplicationController
  def show
    @address = Geocoordinate.location_geocoordinate({ lat: params[:lat], lng: params[:lng] })
    @nearest_gas_station = Geocoordinate.nearest_gas_station({ lat: params[:lat], lng: params[:lng] })
  end
end
