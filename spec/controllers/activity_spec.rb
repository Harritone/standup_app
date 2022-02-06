require 'rails_helper'

RSpec.describe ActivityController, type: :controller do
  
  describe "GET /mine" do
    it "returns http success" do
      login_user
      get :mine
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /feed" do
    it "returns http success" do
      login_user
      get :feed
      expect(response).to have_http_status(:success)
    end
  end

end
