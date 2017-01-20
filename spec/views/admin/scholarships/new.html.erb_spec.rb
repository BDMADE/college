require 'rails_helper'

RSpec.describe "admin/scholarships/new", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_scholarship, Admin::Scholarship.new(
      :name => "MyString",
      :discount => 1,
      :condition => "MyString",
      :details => "MyText",
      :group => FactoryGirl.create(:admin_scholarship_group)

    ))
  end

  it "renders new admin_scholarship form" do
    render

    assert_select "form[action=?][method=?]", admin_scholarships_path, "post" do

      assert_select "input#admin_scholarship_name[name=?]", "admin_scholarship[name]"

      assert_select "input#admin_scholarship_discount[name=?]", "admin_scholarship[discount]"

      assert_select "input#admin_scholarship_condition[name=?]", "admin_scholarship[condition]"

      assert_select "textarea#admin_scholarship_details[name=?]", "admin_scholarship[details]"

      assert_select "select#admin_scholarship_group_id[name=?]", "admin_scholarship[group_id]"
    end
  end
end
