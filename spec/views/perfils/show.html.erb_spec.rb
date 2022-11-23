require 'rails_helper'

RSpec.describe "perfils/show.html.erb", type: :view do

  include Devise::Test::IntegrationHelpers
  include Devise::Test::ControllerHelpers

  it "render the profile" do
    #log in
    @perfil = create :perfil, :maria
    sign_in @perfil

    render

    rendered.should have_content(@perfil.name)
    rendered.should have_content(@perfil.email)
    rendered.should have_content(@perfil.phone)
  end
end
