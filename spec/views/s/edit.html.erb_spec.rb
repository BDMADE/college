require 'rails_helper'

RSpec.describe "admins/edit", type: :view do
  before(:each) do
    @admin = assign(:admin, Admin.create!(
      :Department => "MyString",
      :name => "MyString",
      :short_form => "MyString"
    ))
  end

  it "renders the edit admin form" do
    render

    assert_select "form[action=?][method=?]", admin_path(@admin), "post" do

      assert_select "input#admin_Department[name=?]", "admin[Department]"

      assert_select "input#admin_name[name=?]", "admin[name]"

      assert_select "input#admin_short_form[name=?]", "admin[short_form]"
    end
  end
end
