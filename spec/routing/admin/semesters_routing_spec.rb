require "rails_helper"

RSpec.describe Admin::SemestersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/semesters").to route_to("admin/semesters#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/semesters/new").to route_to("admin/semesters#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/semesters/1").to route_to("admin/semesters#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/semesters/1/edit").to route_to("admin/semesters#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/semesters").to route_to("admin/semesters#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/semesters/1").to route_to("admin/semesters#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/semesters/1").to route_to("admin/semesters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/semesters/1").to route_to("admin/semesters#destroy", :id => "1")
    end

  end
end
