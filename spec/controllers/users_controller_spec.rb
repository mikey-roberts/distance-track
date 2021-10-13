require 'rails_helper'
describe UsersController do

  render_views

  describe 'GET users' do
    before(:each) do
      get :index
      @body = response.parsed_body
    end

    it 'expect result to be successful' do
      expect(response).to have_http_status(:success)
      expect(response).to have_http_status(200)
    end

    it 'response body to include' do
      expect(response.body).to include('first_name')
      expect(response.body).to include('last_name')
      expect(response.body).to include('ip_address')
    end
  end
end