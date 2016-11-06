require "rails_helper"

RSpec.describe Admin::ScholarshipsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/scholarships").to route_to("admin/scholarships#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/scholarships/new").to route_to("admin/scholarships#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/scholarships/1").to route_to("admin/scholarships#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/scholarships/1/edit").to route_to("admin/scholarships#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/scholarships").to route_to("admin/scholarships#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/scholarships/1").to route_to("admin/scholarships#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/scholarships/1").to route_to("admin/scholarships#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/scholarships/1").to route_to("admin/scholarships#destroy", :id => "1")
    end

  end
end
