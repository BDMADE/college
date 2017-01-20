require 'rails_helper'

RSpec.describe "admin/subjects/edit", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_subject = assign(:admin_subject, Admin::Subject.create!(
      course: FactoryGirl.create(:admin_course),
      semester: FactoryGirl.create(:admin_semester)
    ))
  end

  it "renders the edit admin_subject form" do
    render

    assert_select "form[action=?][method=?]", admin_subject_path(@admin_subject), "post" do

      assert_select "select#admin_subject_course_id[name=?]", "admin_subject[course_id]"

      assert_select "select#admin_subject_semester_id[name=?]", "admin_subject[semester_id]"
    end
  end
end
