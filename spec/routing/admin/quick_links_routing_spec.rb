require "rails_helper"

RSpec.describe Admin::QuickLinksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/quick_links").to route_to("admin/quick_links#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/quick_links/new").to route_to("admin/quick_links#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/quick_links/1").to route_to("admin/quick_links#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/quick_links/1/edit").to route_to("admin/quick_links#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/quick_links").to route_to("admin/quick_links#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/quick_links/1").to route_to("admin/quick_links#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/quick_links/1").to route_to("admin/quick_links#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/quick_links/1").to route_to("admin/quick_links#destroy", :id => "1")
    end

  end
end
