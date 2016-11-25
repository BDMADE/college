require "rails_helper"

RSpec.describe Admin::PostalsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/postals").to route_to("admin/postals#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/postals/new").to route_to("admin/postals#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/postals/1").to route_to("admin/postals#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/postals/1/edit").to route_to("admin/postals#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/postals").to route_to("admin/postals#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/postals/1").to route_to("admin/postals#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/postals/1").to route_to("admin/postals#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/postals/1").to route_to("admin/postals#destroy", :id => "1")
    end

  end
end
