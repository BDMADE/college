require 'rails_helper'

RSpec.describe "Admin::QuickLinks", type: :request do
  describe "GET /admin_quick_links" do
    it "works! (now write some real specs)" do
      get admin_quick_links_path
      expect(response).to have_http_status(200)
    end
  end
end
