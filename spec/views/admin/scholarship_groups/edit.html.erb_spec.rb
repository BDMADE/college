require 'rails_helper'

RSpec.describe "admin/scholarship_groups/edit", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_scholarship_group = assign(:admin_scholarship_group, Admin::ScholarshipGroup.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit admin_scholarship_group form" do
    render

    assert_select "form[action=?][method=?]", admin_scholarship_group_path(@admin_scholarship_group), "post" do

      assert_select "input#admin_scholarship_group_name[name=?]", "admin_scholarship_group[name]"
    end
  end
end
