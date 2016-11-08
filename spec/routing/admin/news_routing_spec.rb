require "rails_helper"

RSpec.describe Admin::NewsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/news").to route_to("admin/news#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/news/new").to route_to("admin/news#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/news/1").to route_to("admin/news#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/news/1/edit").to route_to("admin/news#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/news").to route_to("admin/news#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/news/1").to route_to("admin/news#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/news/1").to route_to("admin/news#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/news/1").to route_to("admin/news#destroy", :id => "1")
    end

  end
end
