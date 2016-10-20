require "rails_helper"

RSpec.describe Admin::TuitionFeesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/tuition_fees").to route_to("admin/tuition_fees#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/tuition_fees/new").to route_to("admin/tuition_fees#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/tuition_fees/1").to route_to("admin/tuition_fees#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/tuition_fees/1/edit").to route_to("admin/tuition_fees#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/tuition_fees").to route_to("admin/tuition_fees#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/tuition_fees/1").to route_to("admin/tuition_fees#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/tuition_fees/1").to route_to("admin/tuition_fees#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/tuition_fees/1").to route_to("admin/tuition_fees#destroy", :id => "1")
    end

  end
end
