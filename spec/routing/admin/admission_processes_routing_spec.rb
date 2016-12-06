require "rails_helper"

RSpec.describe Admin::AdmissionProcessesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/admission_processes").to route_to("admin/admission_processes#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/admission_processes/new").to route_to("admin/admission_processes#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/admission_processes/1").to route_to("admin/admission_processes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/admission_processes/1/edit").to route_to("admin/admission_processes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/admission_processes").to route_to("admin/admission_processes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/admission_processes/1").to route_to("admin/admission_processes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/admission_processes/1").to route_to("admin/admission_processes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/admission_processes/1").to route_to("admin/admission_processes#destroy", :id => "1")
    end

  end
end
