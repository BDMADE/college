require "rails_helper"

RSpec.describe Admin::DepartmentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/departments").to route_to("admin/departments#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/departments/new").to route_to("admin/departments#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/departments/1").to route_to("admin/departments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/departments/1/edit").to route_to("admin/departments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/departments").to route_to("admin/departments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/departments/1").to route_to("admin/departments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/departments/1").to route_to("admin/departments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/departments/1").to route_to("admin/departments#destroy", :id => "1")
    end

  end
end
