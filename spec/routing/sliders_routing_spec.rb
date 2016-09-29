require "rails_helper"

RSpec.describe SlidersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sliders").to route_to("sliders#index")
    end

    it "routes to #new" do
      expect(:get => "/sliders/new").to route_to("sliders#new")
    end

    it "routes to #show" do
      expect(:get => "/sliders/1").to route_to("sliders#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sliders/1/edit").to route_to("sliders#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sliders").to route_to("sliders#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sliders/1").to route_to("sliders#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sliders/1").to route_to("sliders#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sliders/1").to route_to("sliders#destroy", :id => "1")
    end

  end
end
