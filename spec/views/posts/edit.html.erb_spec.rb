require 'rails_helper'

RSpec.describe "posts/edit", type: :view do

  include Devise::Test::IntegrationHelpers
  include Devise::Test::ControllerHelpers

  before(:each) do
    assign(:post, Post.new())
  end

  it "has delete post button" do
    #log in
    my_profile = create :perfil, :maria
    sign_in my_profile 
    
    post = Post.create!(:titulo => 'titulo', :descricao => 'corpo', :local => 'local', :perfil_id => my_profile.id, :tipo => 'perdido', :encontrado => false)
    
    controller.extra_params = { :id => post.id }

    expect(controller.request.fullpath).to eq edit_post_path(post)
  end
end
