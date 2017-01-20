require 'rails_helper'

RSpec.describe "admin/subjects/new", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_subject, Admin::Subject.new(
     :course => nil,
      :semester => nil
    ))
  end

  it "renders new admin_subject form" do
    render

    assert_select "form[action=?][method=?]", admin_subjects_path, "post" do

      assert_select "select#admin_subject_course_id[name=?]", "admin_subject[course_id]"

      assert_select "select#admin_subject_semester_id[name=?]", "admin_subject[semester_id]"
    end
  end
end
