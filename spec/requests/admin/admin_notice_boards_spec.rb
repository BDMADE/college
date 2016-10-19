require 'rails_helper'

RSpec.describe "Admin::NoticeBoards", type: :request do
  describe "GET /admin_notice_boards" do
    it "works! (now write some real specs)" do
      get admin_notice_boards_path
      expect(response).to have_http_status(200)
    end
  end
end
