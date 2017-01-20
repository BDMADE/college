require 'rails_helper'

RSpec.describe "admin/testimonials/edit", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_testimonial = assign(:admin_testimonial, Admin::Testimonial.create!(
        name:"MyString",
        description: "MyText",
        department: FactoryGirl.create(:admin_department),
        semester: FactoryGirl.create(:admin_semester)
    ))
  end

  it "renders the edit admin_testimonial form" do
    render

    assert_select "form[action=?][method=?]", admin_testimonial_path(@admin_testimonial), "post" do

      assert_select "input#admin_testimonial_name[name=?]", "admin_testimonial[name]"

      assert_select "textarea#admin_testimonial_description[name=?]", "admin_testimonial[description]"

      assert_select "select#admin_testimonial_department_id[name=?]", "admin_testimonial[department_id]"

      assert_select "select#admin_testimonial_semester_id[name=?]", "admin_testimonial[semester_id]"
    end
  end
end
