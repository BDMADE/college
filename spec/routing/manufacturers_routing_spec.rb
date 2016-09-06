require "rails_helper"

RSpec.describe ManufacturersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/manufacturers").to route_to("manufacturers#index")
    end

    it "routes to #new" do
      expect(:get => "/manufacturers/new").to route_to("manufacturers#new")
    end

    it "routes to #show" do
      expect(:get => "/manufacturers/1").to route_to("manufacturers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/manufacturers/1/edit").to route_to("manufacturers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/manufacturers").to route_to("manufacturers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/manufacturers/1").to route_to("manufacturers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/manufacturers/1").to route_to("manufacturers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/manufacturers/1").to route_to("manufacturers#destroy", :id => "1")
    end

  end
end
