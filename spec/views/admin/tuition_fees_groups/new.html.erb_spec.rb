require 'rails_helper'

RSpec.describe "admin/tuition_fees_groups/new", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_tuition_fees_group, Admin::TuitionFeesGroup.new(
      :name => "MyString"
    ))
  end

  it "renders new admin_tuition_fees_group form" do
    render

    assert_select "form[action=?][method=?]", admin_tuition_fees_groups_path, "post" do

      assert_select "input#admin_tuition_fees_group_name[name=?]", "admin_tuition_fees_group[name]"
    end
  end
end
