require "rails_helper"

RSpec.describe MuralController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/mural/index").to route_to("mural#index")
    end
  end
end
