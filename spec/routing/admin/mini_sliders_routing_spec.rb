require "rails_helper"

RSpec.describe Admin::MiniSlidersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/mini_sliders").to route_to("admin/mini_sliders#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/mini_sliders/new").to route_to("admin/mini_sliders#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/mini_sliders/1").to route_to("admin/mini_sliders#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/mini_sliders/1/edit").to route_to("admin/mini_sliders#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/mini_sliders").to route_to("admin/mini_sliders#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/mini_sliders/1").to route_to("admin/mini_sliders#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/mini_sliders/1").to route_to("admin/mini_sliders#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/mini_sliders/1").to route_to("admin/mini_sliders#destroy", :id => "1")
    end

  end
end
