require "rails_helper"

RSpec.describe Admin::TestimonialsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/testimonials").to route_to("admin/testimonials#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/testimonials/new").to route_to("admin/testimonials#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/testimonials/1").to route_to("admin/testimonials#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/testimonials/1/edit").to route_to("admin/testimonials#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/testimonials").to route_to("admin/testimonials#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/testimonials/1").to route_to("admin/testimonials#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/testimonials/1").to route_to("admin/testimonials#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/testimonials/1").to route_to("admin/testimonials#destroy", :id => "1")
    end

  end
end
