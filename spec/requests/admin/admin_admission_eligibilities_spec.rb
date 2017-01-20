require 'rails_helper'

RSpec.describe "Admin::AdmissionEligibilities", type: :request do

  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email:'a@s.com',password: 'secret', admin: true) }

  before do
    sign_in_as user
  end

  describe "GET /admin_admission_eligibilities" do
    it "works! (now write some real specs)" do
      get admin_admission_eligibilities_path
      expect(response).to have_http_status(200)
    end
  end
end
