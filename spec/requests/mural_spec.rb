require 'rails_helper'

RSpec.describe "Murals", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/mural/index"
      expect(response).to have_http_status(:success)
    end
  end

end
