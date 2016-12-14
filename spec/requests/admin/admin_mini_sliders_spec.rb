require 'rails_helper'

RSpec.describe "Admin::MiniSliders", type: :request do
  describe "GET /admin_mini_sliders" do
    it "works! (now write some real specs)" do
      get admin_mini_sliders_path
      expect(response).to have_http_status(200)
    end
  end
end
