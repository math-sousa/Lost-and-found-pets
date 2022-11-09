require 'rails_helper'

RSpec.describe "posts/edit", type: :view do

  before(:each) do
    assign(:post, Post.new())
  end

  it "renders edit post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do
    end
  end
end
