require 'rails_helper'

RSpec.describe "admin/tuition_fees_groups/edit", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_tuition_fees_group = assign(:admin_tuition_fees_group, Admin::TuitionFeesGroup.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit admin_tuition_fees_group form" do
    render

    assert_select "form[action=?][method=?]", admin_tuition_fees_group_path(@admin_tuition_fees_group), "post" do

      assert_select "input#admin_tuition_fees_group_name[name=?]", "admin_tuition_fees_group[name]"
    end
  end
end
