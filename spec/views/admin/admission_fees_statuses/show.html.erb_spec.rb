require 'rails_helper'

RSpec.describe "admin/admission_fees_statuses/show", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_admission_fees_status = assign(:admin_admission_fees_status, Admin::AdmissionFeesStatus.create!(
      :name => "Name",
      :value => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
  end
end
