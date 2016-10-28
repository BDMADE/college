require "rails_helper"

RSpec.describe Admin::ScholarshipGroupsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/scholarship_groups").to route_to("admin/scholarship_groups#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/scholarship_groups/new").to route_to("admin/scholarship_groups#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/scholarship_groups/1").to route_to("admin/scholarship_groups#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/scholarship_groups/1/edit").to route_to("admin/scholarship_groups#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/scholarship_groups").to route_to("admin/scholarship_groups#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/scholarship_groups/1").to route_to("admin/scholarship_groups#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/scholarship_groups/1").to route_to("admin/scholarship_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/scholarship_groups/1").to route_to("admin/scholarship_groups#destroy", :id => "1")
    end

  end
end
