require 'rails_helper'

RSpec.describe "Admin::Postals", type: :request do
  describe "GET /admin_postals" do
    it "works! (now write some real specs)" do
      get admin_postals_path
      expect(response).to have_http_status(200)
    end
  end
end
