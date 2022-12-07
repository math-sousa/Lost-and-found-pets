require 'rails_helper'

RSpec.describe "perfils/show_comments.html.erb", type: :view do

  include Devise::Test::IntegrationHelpers
  include Devise::Test::ControllerHelpers

  it "render comments if user have comments" do
    #log in
    my_profile = create :perfil, :maria
    sign_in my_profile 

    #add comment
    post = create :post, perfil: my_profile
    comment = create :comment, perfil_id: my_profile.id, post_id: post.id

    @perfil = my_profile
    @comments = Comment.where(perfil_id: my_profile.id)

    render
    rendered.should have_selector('#comment')
  end

  it "do not render comments if user do not have comments" do
    #log in
    my_profile = create :perfil, :maria
    sign_in my_profile 

    @comments = Comment.where(perfil_id: my_profile.id)
    @perfil = my_profile
    render

    rendered.should_not have_selector('#comments')
    rendered.should have_content('Ainda não há comentários deste usuário.')
  end
end