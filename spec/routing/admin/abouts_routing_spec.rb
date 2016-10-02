require "rails_helper"

RSpec.describe Admin::AboutsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/abouts").to route_to("admin/abouts#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/abouts/new").to route_to("admin/abouts#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/abouts/1").to route_to("admin/abouts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/abouts/1/edit").to route_to("admin/abouts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/abouts").to route_to("admin/abouts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/abouts/1").to route_to("admin/abouts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/abouts/1").to route_to("admin/abouts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/abouts/1").to route_to("admin/abouts#destroy", :id => "1")
    end

  end
end
