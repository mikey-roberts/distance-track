class UsersController < ApplicationController
  require 'rest-client'
  require 'geokit'

  attr_reader :filtered_users

  LONDON_COORDS = Geokit::LatLng.new(51.509865,-0.118092)

  def get_users
    url = "https://bpdts-test-app.herokuapp.com/users"
    response = RestClient.get(url)
    data = JSON.parse(response.body)
    check_distance(data)
    render json: @filtered_users
  end

  private
  
  def check_distance(location)
    @filtered_users = []
    user_location = ""
    location.each do |loc|
    user_location = combine_lat_long(loc)
    @filtered_users.push(loc) if within_distance?(user_location)
    end
  end

  def combine_lat_long(loc)
    loc["latitude"].to_s + ", " + loc["longitude"].to_s
  end

  def within_distance?(user_location)
    LONDON_COORDS.distance_to(user_location) <= 50
  end
end
