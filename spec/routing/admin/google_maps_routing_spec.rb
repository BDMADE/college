require "rails_helper"

RSpec.describe Admin::GoogleMapsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/google_maps").to route_to("admin/google_maps#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/google_maps/new").to route_to("admin/google_maps#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/google_maps/1").to route_to("admin/google_maps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/google_maps/1/edit").to route_to("admin/google_maps#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/google_maps").to route_to("admin/google_maps#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/google_maps/1").to route_to("admin/google_maps#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/google_maps/1").to route_to("admin/google_maps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/google_maps/1").to route_to("admin/google_maps#destroy", :id => "1")
    end

  end
end
