require 'rails_helper'

RSpec.describe "Admin::Testimonials", type: :request do
  describe "GET /admin_testimonials" do
    it "works! (now write some real specs)" do
      get admin_testimonials_path
      expect(response).to have_http_status(200)
    end
  end
end
