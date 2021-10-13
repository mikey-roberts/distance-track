require 'rails_helper'

describe UsersController do
  describe 'GET users' do
    render_views
    it 'expect result to be successful' do
      get "index"
      expect(response).to have_http_status(:success)
      expect(response).to have_http_status(200)
    end
  end
end
