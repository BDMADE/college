require 'rails_helper'

RSpec.describe "Admin::AdmissionFeesStatuses", type: :request do
  describe "GET /admin_admission_fees_statuses" do
    it "works! (now write some real specs)" do
      get admin_admission_fees_statuses_path
      expect(response).to have_http_status(200)
    end
  end
end
