require 'rails_helper'

RSpec.describe "admin/semesters/edit", type: :view do
  before(:each) do
    @admin_semester = assign(:admin_semester, Admin::Semester.create!(
      :name => "MyString",
      :short_form => "MyString"
    ))
  end

  it "renders the edit admin_semester form" do
    render

    assert_select "form[action=?][method=?]", admin_semester_path(@admin_semester), "post" do

      assert_select "input#admin_semester_name[name=?]", "admin_semester[name]"

      assert_select "input#admin_semester_short_form[name=?]", "admin_semester[short_form]"
    end
  end
end
