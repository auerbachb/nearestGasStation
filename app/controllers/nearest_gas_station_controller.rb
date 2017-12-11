class NearestGasStationController < ApplicationController
  include ActionController::Caching

  def show
    @location = { lat: params[:lat], lng: params[:lng] }
  end
end
