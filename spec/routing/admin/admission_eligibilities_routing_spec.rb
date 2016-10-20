require "rails_helper"

RSpec.describe Admin::AdmissionEligibilitiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/admission_eligibilities").to route_to("admin/admission_eligibilities#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/admission_eligibilities/new").to route_to("admin/admission_eligibilities#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/admission_eligibilities/1").to route_to("admin/admission_eligibilities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/admission_eligibilities/1/edit").to route_to("admin/admission_eligibilities#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/admission_eligibilities").to route_to("admin/admission_eligibilities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/admission_eligibilities/1").to route_to("admin/admission_eligibilities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/admission_eligibilities/1").to route_to("admin/admission_eligibilities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/admission_eligibilities/1").to route_to("admin/admission_eligibilities#destroy", :id => "1")
    end

  end
end
