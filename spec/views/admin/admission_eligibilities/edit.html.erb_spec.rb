require 'rails_helper'

RSpec.describe "admin/admission_eligibilities/edit", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_admission_eligibility = assign(:admin_admission_eligibility, Admin::AdmissionEligibility.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit admin_admission_eligibility form" do
    render

    assert_select "form[action=?][method=?]", admin_admission_eligibility_path(@admin_admission_eligibility), "post" do

      assert_select "input#admin_admission_eligibility_name[name=?]", "admin_admission_eligibility[name]"

      assert_select "textarea#admin_admission_eligibility_description[name=?]", "admin_admission_eligibility[description]"
    end
  end
end
