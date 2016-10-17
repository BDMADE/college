require 'rails_helper'

RSpec.describe "Admin::TuitionFeesGroups", type: :request do
  describe "GET /admin_tuition_fees_groups" do
    it "works! (now write some real specs)" do
      get admin_tuition_fees_groups_path
      expect(response).to have_http_status(200)
    end
  end
end
