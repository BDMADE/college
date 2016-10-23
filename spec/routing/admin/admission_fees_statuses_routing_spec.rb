require "rails_helper"

RSpec.describe Admin::AdmissionFeesStatusesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/admission_fees_statuses").to route_to("admin/admission_fees_statuses#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/admission_fees_statuses/new").to route_to("admin/admission_fees_statuses#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/admission_fees_statuses/1").to route_to("admin/admission_fees_statuses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/admission_fees_statuses/1/edit").to route_to("admin/admission_fees_statuses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/admission_fees_statuses").to route_to("admin/admission_fees_statuses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/admission_fees_statuses/1").to route_to("admin/admission_fees_statuses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/admission_fees_statuses/1").to route_to("admin/admission_fees_statuses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/admission_fees_statuses/1").to route_to("admin/admission_fees_statuses#destroy", :id => "1")
    end

  end
end
