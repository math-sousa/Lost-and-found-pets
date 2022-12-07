require 'rails_helper'

RSpec.describe "mural/index.html.erb", type: :view do

  include Devise::Test::IntegrationHelpers
  include Devise::Test::ControllerHelpers

  it "does not render comments if the show comments button was not clicked" do
    #log in
    my_profile = create :perfil, :maria
    sign_in my_profile 
    
    not_my_profile = create :perfil, :mario

    #add post
    post = create :post, perfil: my_profile
    comment = create :comment, perfil_id: my_profile.id, post_id: post.id

    @posts = Post.all
    @comment = Comment.new

    render

    expect(rendered).to have_selector('.comment', visible: false)
  end

  it "render the show/hide comments link in post" do
    #log in
    my_profile = create :perfil, :maria
    sign_in my_profile 
    
    not_my_profile = create :perfil, :mario

    #add post
    post = create :post, perfil: my_profile
    comment = create :comment, perfil_id: my_profile.id, post_id: post.id
    @posts = Post.all
    @comment = Comment.new
    render

    expect(rendered).to have_content('Esconder/mostrar comentários')
  end

  it "do not render the show/hide comments link in post when there are no comment" do
        #log in
        my_profile = create :perfil, :maria
        sign_in my_profile 
        
        not_my_profile = create :perfil, :mario
    
        #add post
        post = create :post, perfil: my_profile
        @posts = Post.all
        @comment = Comment.new
        render
    
        expect(rendered).to have_content('Este post não possui comentários!')
        expect(rendered).to_not have_selector('.comment')
  end

  it "render the edit button if post is yours" do
    #log in
    my_profile = create :perfil, :maria
    sign_in my_profile 
    
    not_my_profile = create :perfil, :mario

    #add post
    post = create :post, perfil: my_profile
    @posts = Post.all
    @comment = Comment.new
    render

    expect(rendered).to have_content('Editar post')
  end

  it "do not render the edit button if post is not yours" do
    #log in
    my_profile = create :perfil, :maria
    sign_in my_profile 
    
    not_my_profile = create :perfil, :mario

    #add post
    post = create :post, perfil: not_my_profile
    @posts = Post.all
    @comment = Comment.new
    render

    expect(rendered).to_not have_content('Editar post')
  end

  it "render the profile link in post" do
    #log in
    my_profile = create :perfil, :maria
    sign_in my_profile 
    
    not_my_profile = create :perfil, :mario

    #add post
    post = create :post, perfil: not_my_profile
    @posts = Post.all
    @comment = Comment.new

    render

    expect(rendered).to have_link(nil, href: "#{perfil_path(not_my_profile.id)}")
  end

  it "render the likes in post" do
    #log in
    my_profile = create :perfil, :maria
    sign_in my_profile 
    
    not_my_profile = create :perfil, :mario

    #add post
    post = create :post, perfil: not_my_profile
    @posts = Post.all
    @comment = Comment.new

    render

    rendered.should have_content("10 Curtida(s)")
  end

  it "render the like button" do
    #log in
    my_profile = create :perfil, :maria
    sign_in my_profile 
    
    not_my_profile = create :perfil, :mario

    #add post
    post = create :post, perfil: not_my_profile
    @posts = Post.all
    @comment = Comment.new

    render

    rendered.should have_button("Curtir")
  end
end
