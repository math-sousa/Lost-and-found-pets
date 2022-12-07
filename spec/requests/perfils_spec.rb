require 'rails_helper'

RSpec.describe "Perfils", type: :request do

  include Devise::Test::IntegrationHelpers

  describe "GET /show" do
      it "returns http success" do
          #log in
          perfil = create(:perfil, :maria)
          sign_in perfil
          #add post
          post = create :post, perfil: perfil
          get "/perfils/show/1"
          expect(response).to have_http_status(:success)
        end
        it "redirects to the login page when user not logged in" do
          get "/perfils/show/1"
          expect(response).to have_http_status(:redirect)
          expect(response).to redirect_to("/perfils/sign_in")
        end
  end
  
  describe "GET /comments" do
    it "returns http success" do
        #log in
        perfil = create(:perfil, :maria)
        sign_in perfil
        #add post
        post = create :post, perfil: perfil
        #add comment
        comment = create :comment, perfil_id: perfil.id, post_id: post.id
        get "/perfils/1/comments"
        expect(response).to have_http_status(:success)
      end
      it "redirects to the login page when user not logged in" do
        get "/perfils/1/comments"
        expect(response).to have_http_status(:redirect)
        expect(response).to redirect_to("/perfils/sign_in")
      end
end
end
