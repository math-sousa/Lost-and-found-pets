require 'rails_helper'

RSpec.describe "Posts", type: :request do
  include Devise::Test::IntegrationHelpers

  describe "GET /edit" do
    it "returns http success" do
      #log in
      perfil = create(:perfil, :maria)
      sign_in perfil
      #add post
      post = create :post, perfil: perfil
      get "/posts/1/edit"
      expect(response).to have_http_status(:success)
    end
    it "redirects to the login page when user not logged in" do
      get "/posts/edit"
      expect(response).to have_http_status(:redirect)
      expect(response).to redirect_to("/perfils/sign_in")
    end
  end

  describe "PUT /update" do
    it "post is updated" do
      #log in
      perfil = create(:perfil, :maria)
      sign_in perfil
      #add post
      post = create :post, perfil: perfil

      put "/posts/1", params: {post: { titulo: 'algum titulo', descricao: 'alguma coisa', tipo: 'pet perdido', local: 'algum local', curtidas: 20}}
      post = Post.order("id").last
      expect(post.titulo).to be_eql('algum titulo')
      expect(post.descricao).to be_eql('alguma coisa')
      expect(post.local).to be_eql('algum local')
      expect(post.tipo).to be_eql('pet perdido')
    end
    it "redirects to the login page when user not logged in" do
      put "/posts/1"
      expect(response).to have_http_status(:redirect)
      expect(response).to redirect_to("/perfils/sign_in")
    end
  end

  describe "POST /update" do
    it "post is created" do
      #log in
      perfil = create(:perfil, :maria)
      sign_in perfil

      post "/posts", params: {post: { titulo: 'algum titulo', descricao: 'alguma coisa', tipo: 'pet perdido', local: 'algum local', curtidas: 20}}
      publicacao = Post.order("id").last
      expect(publicacao.titulo).to be_eql('algum titulo')
      expect(publicacao.descricao).to be_eql('alguma coisa')
      expect(publicacao.local).to be_eql('algum local')
      expect(publicacao.tipo).to be_eql('pet perdido')
      expect(publicacao.curtidas).to be_eql(20)
    end

    it "redirects to the login page when user not logged in" do
      post "/posts"
      expect(response).to have_http_status(:redirect)
      expect(response).to redirect_to("/perfils/sign_in")
    end
  end

  describe "GET /show" do
    it "returns http success" do
      #log in
      perfil = create(:perfil, :maria)
      sign_in perfil
      #add post 
      post = create :post, perfil: perfil
      get "/posts/1"
      expect(response).to have_http_status(:success)
    end
    it "redirects to the login page when user not logged in" do
      get "/posts/1"
      expect(response).to have_http_status(:redirect)
      expect(response).to redirect_to("/perfils/sign_in")
    end
  end

end
