require 'rails_helper'

RSpec.describe "admins/new", type: :view do
  before(:each) do
    assign(:admin, Admin.new(
      :Department => "MyString",
      :name => "MyString",
      :short_form => "MyString"
    ))
  end

  it "renders new admin form" do
    render

    assert_select "form[action=?][method=?]", admins_path, "post" do

      assert_select "input#admin_Department[name=?]", "admin[Department]"

      assert_select "input#admin_name[name=?]", "admin[name]"

      assert_select "input#admin_short_form[name=?]", "admin[short_form]"
    end
  end
end
