require 'rails_helper'

RSpec.describe "admin/icons/edit", type: :view do
  before(:each) do
    @admin_icon = assign(:admin_icon, Admin::Icon.create!(
      :name => "MyString",
      :icon => "MyString"
    ))
  end

  it "renders the edit admin_icon form" do
    render

    assert_select "form[action=?][method=?]", admin_icon_path(@admin_icon), "post" do

      assert_select "input#admin_icon_name[name=?]", "admin_icon[name]"

      assert_select "input#admin_icon_icon[name=?]", "admin_icon[icon]"
    end
  end
end
