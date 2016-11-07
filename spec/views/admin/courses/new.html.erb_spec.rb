require 'rails_helper'

RSpec.describe "admin/courses/new", type: :view do
  before(:each) do
    assign(:admin_course, Admin::Course.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new admin_course form" do
    render

    assert_select "form[action=?][method=?]", admin_courses_path, "post" do

      assert_select "input#admin_course_name[name=?]", "admin_course[name]"

      assert_select "textarea#admin_course_description[name=?]", "admin_course[description]"
    end
  end
end
