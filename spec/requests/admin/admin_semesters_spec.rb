require 'rails_helper'

RSpec.describe "Admin::Semesters", type: :request do
  describe "GET /admin_semesters" do
    it "works! (now write some real specs)" do
      get admin_semesters_path
      expect(response).to have_http_status(200)
    end
  end
end
