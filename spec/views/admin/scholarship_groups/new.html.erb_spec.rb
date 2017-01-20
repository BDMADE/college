require 'rails_helper'

RSpec.describe "admin/scholarship_groups/new", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_scholarship_group, Admin::ScholarshipGroup.new(
      :name => "MyString"
    ))
  end

  it "renders new admin_scholarship_group form" do
    render

    assert_select "form[action=?][method=?]", admin_scholarship_groups_path, "post" do

      assert_select "input#admin_scholarship_group_name[name=?]", "admin_scholarship_group[name]"
    end
  end
end
