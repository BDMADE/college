require 'rails_helper'

RSpec.describe "Admin::News", type: :request do
  describe "GET /admin_news" do
    it "works! (now write some real specs)" do
      get admin_news_index_path
      expect(response).to have_http_status(200)
    end
  end
end
