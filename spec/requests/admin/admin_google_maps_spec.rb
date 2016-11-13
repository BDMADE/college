require 'rails_helper'

RSpec.describe "Admin::GoogleMaps", type: :request do
  describe "GET /admin_google_maps" do
    it "works! (now write some real specs)" do
      get admin_google_maps_path
      expect(response).to have_http_status(200)
    end
  end
end
