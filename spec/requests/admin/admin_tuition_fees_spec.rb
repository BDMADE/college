require 'rails_helper'

RSpec.describe "Admin::TuitionFees", type: :request do
  describe "GET /admin_tuition_fees" do
    it "works! (now write some real specs)" do
      get admin_tuition_fees_path
      expect(response).to have_http_status(200)
    end
  end
end
