require "rails_helper"

RSpec.describe Admin::TuitionFeesGroupsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/tuition_fees_groups").to route_to("admin/tuition_fees_groups#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/tuition_fees_groups/new").to route_to("admin/tuition_fees_groups#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/tuition_fees_groups/1").to route_to("admin/tuition_fees_groups#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/tuition_fees_groups/1/edit").to route_to("admin/tuition_fees_groups#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/tuition_fees_groups").to route_to("admin/tuition_fees_groups#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/tuition_fees_groups/1").to route_to("admin/tuition_fees_groups#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/tuition_fees_groups/1").to route_to("admin/tuition_fees_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/tuition_fees_groups/1").to route_to("admin/tuition_fees_groups#destroy", :id => "1")
    end

  end
end
