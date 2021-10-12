class UsersController < ApplicationController
  require 'rest-client'
  require 'geokit'

  attr_reader :filtered_users

  LONDON_COORDS = Geokit::LatLng.new(51.509865,-0.118092)

  def get_users
    url = "https://bpdts-test-app.herokuapp.com/users"
    response = RestClient.get(url)
    data = JSON.parse(response.body)
    within_50_miles(data)
    render json: @filtered_users
  end

  private
  
  def within_50_miles(location)
    @filtered_users = []
    user_location = ""
    location.each do |loc|
    user_location = loc["latitude"].to_s + ", " + loc["longitude"].to_s
    @filtered_users.push(loc) if LONDON_COORDS.distance_to(user_location) <= 50
    end
  end
end
