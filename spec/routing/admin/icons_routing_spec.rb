require "rails_helper"

RSpec.describe Admin::IconsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/icons").to route_to("admin/icons#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/icons/new").to route_to("admin/icons#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/icons/1").to route_to("admin/icons#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/icons/1/edit").to route_to("admin/icons#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/icons").to route_to("admin/icons#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/icons/1").to route_to("admin/icons#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/icons/1").to route_to("admin/icons#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/icons/1").to route_to("admin/icons#destroy", :id => "1")
    end

  end
end
