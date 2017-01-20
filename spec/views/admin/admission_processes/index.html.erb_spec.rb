require 'rails_helper'

RSpec.describe "admin/admission_processes/index", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_admission_processes, [
      Admin::AdmissionProcess.create!(
        :step => 2,
        :name => "Name"
      )
    ])
  end

  it "renders a list of admin/admission_processes" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 1
    assert_select "tr>td", :text => "Name".to_s, :count => 1
  end
end
