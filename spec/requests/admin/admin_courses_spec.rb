require 'rails_helper'

RSpec.describe "Admin::Courses", type: :request do
  describe "GET /admin_courses" do
    it "works! (now write some real specs)" do
      get admin_courses_path
      expect(response).to have_http_status(200)
    end
  end
end
