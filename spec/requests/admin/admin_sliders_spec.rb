require 'rails_helper'

RSpec.describe "Admin::Sliders", type: :request do
  describe "GET /admin_sliders" do
    it "works! (now write some real specs)" do
      get admin_sliders_path
      expect(response).to have_http_status(200)
    end
  end
end
