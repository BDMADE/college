require 'rails_helper'

RSpec.describe "admin/admission_eligibilities/new", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_admission_eligibility, Admin::AdmissionEligibility.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new admin_admission_eligibility form" do
    render

    assert_select "form[action=?][method=?]", admin_admission_eligibilities_path, "post" do

      assert_select "input#admin_admission_eligibility_name[name=?]", "admin_admission_eligibility[name]"

      assert_select "textarea#admin_admission_eligibility_description[name=?]", "admin_admission_eligibility[description]"
    end
  end
end
