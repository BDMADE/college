require 'rails_helper'

RSpec.describe "Admin::AdmissionFeesStatuses", type: :request do
  describe "GET /admin_admission_fees_statuses" do

    let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email:'a@s.com',password: 'secret', admin: true) }

    before do
      sign_in_as user
    end

    it "works! (now write some real specs)" do
      get admin_admission_fees_statuses_path
      expect(response).to have_http_status(200)
    end
  end
end
