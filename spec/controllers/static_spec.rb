require 'rails_helper'

RSpec.describe StaticController, type: :controller do
  login_user
  describe "GET /support" do
    it "returns http success" do
      get :support
      expect(response).to have_http_status(:success)
    end
  end

end
