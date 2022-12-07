require 'rails_helper'

RSpec.describe "Murals", type: :request do

    include Devise::Test::IntegrationHelpers

    describe "GET /index" do
        it "returns http success" do
            #log in
            perfil = create(:perfil, :maria)
            sign_in perfil
            #add post
            post = create :post, perfil: perfil
            get "/mural/index"
            expect(response).to have_http_status(:success)
        end
        it "redirects to the login page when user not logged in" do
            get "/mural/index"
            expect(response).to have_http_status(:redirect)
            expect(response).to redirect_to("/perfils/sign_in")
        end
    end

end
