require "rails_helper"

RSpec.describe Admin::SocialMediaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/social_media").to route_to("admin/social_media#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/social_media/new").to route_to("admin/social_media#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/social_media/1").to route_to("admin/social_media#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/social_media/1/edit").to route_to("admin/social_media#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/social_media").to route_to("admin/social_media#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/social_media/1").to route_to("admin/social_media#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/social_media/1").to route_to("admin/social_media#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/social_media/1").to route_to("admin/social_media#destroy", :id => "1")
    end

  end
end
