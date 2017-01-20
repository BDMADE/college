require 'rails_helper'

RSpec.describe "Admin::Postals", type: :request do

  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email:'a@s.com',password: 'secret', admin: true) }

  before do
    sign_in_as user
  end

  describe "GET /admin_postals" do
    it "works! (now write some real specs)" do
      get admin_postals_path
      expect(response).to have_http_status(200)
    end
  end
end
