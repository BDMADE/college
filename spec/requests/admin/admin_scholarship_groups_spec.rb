require 'rails_helper'

RSpec.describe "Admin::ScholarshipGroups", type: :request do
  describe "GET /admin_scholarship_groups" do
    it "works! (now write some real specs)" do
      get admin_scholarship_groups_path
      expect(response).to have_http_status(200)
    end
  end
end
