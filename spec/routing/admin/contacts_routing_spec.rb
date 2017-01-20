require "rails_helper"

RSpec.describe Admin::ContactsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/contacts").to route_to("admin/contacts#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/contacts/new").to route_to("admin/contacts#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/contacts/1").to route_to("admin/contacts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/contacts/1/edit").to route_to("admin/contacts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/contacts").to route_to("admin/contacts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/contacts/1").to route_to("admin/contacts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/contacts/1").to route_to("admin/contacts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/contacts/1").to route_to("admin/contacts#destroy", :id => "1")
    end

  end
end
