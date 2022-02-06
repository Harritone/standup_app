require 'rails_helper'

RSpec.describe "Statics", type: :request do
  describe "GET /support" do
    it "returns http success" do
      get "/static/support"
      expect(response).to have_http_status(:success)
    end
  end

end
