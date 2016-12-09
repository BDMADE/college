require 'rails_helper'

RSpec.describe "admin/subjects/new", type: :view do
  before(:each) do
    assign(:admin_subject, Admin::Subject.new(
      :name => "MyString",
      :course => nil,
      :semester => nil
    ))
  end

  it "renders new admin_subject form" do
    render

    assert_select "form[action=?][method=?]", admin_subjects_path, "post" do

      assert_select "input#admin_subject_name[name=?]", "admin_subject[name]"

      assert_select "input#admin_subject_course_id[name=?]", "admin_subject[course_id]"

      assert_select "input#admin_subject_semester_id[name=?]", "admin_subject[semester_id]"
    end
  end
end
