require "rails_helper"

RSpec.describe Admin::CoursesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/courses").to route_to("admin/courses#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/courses/new").to route_to("admin/courses#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/courses/1").to route_to("admin/courses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/courses/1/edit").to route_to("admin/courses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/courses").to route_to("admin/courses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/courses/1").to route_to("admin/courses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/courses/1").to route_to("admin/courses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/courses/1").to route_to("admin/courses#destroy", :id => "1")
    end

  end
end
