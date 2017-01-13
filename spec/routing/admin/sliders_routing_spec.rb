require "rails_helper"

RSpec.describe Admin::SlidersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/sliders").to route_to("admin/sliders#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/sliders/new").to route_to("admin/sliders#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/sliders/1").to route_to("admin/sliders#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/sliders/1/edit").to route_to("admin/sliders#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/sliders").to route_to("admin/sliders#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/sliders/1").to route_to("admin/sliders#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/sliders/1").to route_to("admin/sliders#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/sliders/1").to route_to("admin/sliders#destroy", :id => "1")
    end

  end
end
