require 'rails_helper'

RSpec.describe "Admin::SocialMedia", type: :request do
  describe "GET /admin_social_media" do
    it "works! (now write some real specs)" do
      get admin_social_media_path
      expect(response).to have_http_status(200)
    end
  end
end
