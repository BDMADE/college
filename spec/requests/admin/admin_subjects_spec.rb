require 'rails_helper'

RSpec.describe "Admin::Subjects", type: :request do
  describe "GET /admin_subjects" do
    it "works! (now write some real specs)" do
      get admin_subjects_path
      expect(response).to have_http_status(200)
    end
  end
end
