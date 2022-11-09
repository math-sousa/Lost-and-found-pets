require 'rails_helper'

RSpec.describe "mural/index.html.erb", type: :view do

  include Devise::Test::IntegrationHelpers
  include Devise::Test::ControllerHelpers

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

    rendered.should have_content('Editar post')
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

    rendered.should_not have_content('Editar post')
  end
end
