class UsersController < ApplicationController
  require 'rest-client'

  def get_users
    url = "https://bpdts-test-app.herokuapp.com/city/London/users"
    response = RestClient.get(url)
    render json: response
  end
end
