require 'rails_helper'

RSpec.describe "admin/admission_fees_statuses/edit", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_admission_fees_status = assign(:admin_admission_fees_status, Admin::AdmissionFeesStatus.create!(
      :name => "MyString",
      :value => 1
    ))
  end

  it "renders the edit admin_admission_fees_status form" do
    render

    assert_select "form[action=?][method=?]", admin_admission_fees_status_path(@admin_admission_fees_status), "post" do

      assert_select "input#admin_admission_fees_status_name[name=?]", "admin_admission_fees_status[name]"

      assert_select "input#admin_admission_fees_status_value[name=?]", "admin_admission_fees_status[value]"
    end
  end
end
