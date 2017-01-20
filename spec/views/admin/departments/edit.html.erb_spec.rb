require 'rails_helper'

RSpec.describe "admin/departments/edit", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_department = assign(:admin_department, Admin::Department.create!(
      :name => "MyString",
      :short_form => "MyString"
    ))
  end

  it "renders the edit admin_department form" do
    render

    assert_select "form[action=?][method=?]", admin_department_path(@admin_department), "post" do

      assert_select "input#admin_department_name[name=?]", "admin_department[name]"

      assert_select "input#admin_department_short_form[name=?]", "admin_department[short_form]"
    end
  end
end
