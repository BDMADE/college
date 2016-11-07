require 'rails_helper'

RSpec.describe "admin/courses/edit", type: :view do
  before(:each) do
    @admin_course = assign(:admin_course, Admin::Course.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit admin_course form" do
    render

    assert_select "form[action=?][method=?]", admin_course_path(@admin_course), "post" do

      assert_select "input#admin_course_name[name=?]", "admin_course[name]"

      assert_select "textarea#admin_course_description[name=?]", "admin_course[description]"
    end
  end
end
