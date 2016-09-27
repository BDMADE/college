require 'rails_helper'

RSpec.describe "admin/semesters/new", type: :view do
  before(:each) do
    assign(:admin_semester, Admin::Semester.new(
      :name => "MyString",
      :short_form => "MyString"
    ))
  end

  it "renders new admin_semester form" do
    render

    assert_select "form[action=?][method=?]", admin_semesters_path, "post" do

      assert_select "input#admin_semester_name[name=?]", "admin_semester[name]"

      assert_select "input#admin_semester_short_form[name=?]", "admin_semester[short_form]"
    end
  end
end
