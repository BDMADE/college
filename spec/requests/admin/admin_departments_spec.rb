require 'rails_helper'

RSpec.describe "Admin::Departments", type: :request do
  describe "GET /admin_departments" do
    it "works! finds department request" do
      get admin_departments_path
      expect(response).to have_http_status(200)
    end
  end
end
