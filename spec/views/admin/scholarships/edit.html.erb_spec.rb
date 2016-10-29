require 'rails_helper'

RSpec.describe "admin/scholarships/edit", type: :view do
  before(:each) do
    @admin_scholarship = assign(:admin_scholarship, Admin::Scholarship.create!(
      :name => "MyString",
      :discount => 1,
      :condition => "MyString",
      :details => "MyText",
      :group => nil
    ))
  end

  it "renders the edit admin_scholarship form" do
    render

    assert_select "form[action=?][method=?]", admin_scholarship_path(@admin_scholarship), "post" do

      assert_select "input#admin_scholarship_name[name=?]", "admin_scholarship[name]"

      assert_select "input#admin_scholarship_discount[name=?]", "admin_scholarship[discount]"

      assert_select "input#admin_scholarship_condition[name=?]", "admin_scholarship[condition]"

      assert_select "textarea#admin_scholarship_details[name=?]", "admin_scholarship[details]"

      assert_select "input#admin_scholarship_group_id[name=?]", "admin_scholarship[group_id]"
    end
  end
end
