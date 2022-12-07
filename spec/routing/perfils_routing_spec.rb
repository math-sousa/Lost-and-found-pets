require "rails_helper"

RSpec.describe PerfilsController, type: :routing do
  describe "routing" do
    it "routes to #show" do
      expect(get: "/perfils/show/1").to route_to("perfils#show", id: "1")
    end

    it "routes to #comments" do
      expect(get: "/perfils/1/comments").to route_to("perfils#show_comments", id: "1")
    end
  end
end
