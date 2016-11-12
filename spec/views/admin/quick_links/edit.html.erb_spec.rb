require 'rails_helper'

RSpec.describe "admin/quick_links/edit", type: :view do
  before(:each) do
    @admin_quick_link = assign(:admin_quick_link, Admin::QuickLink.create!(
      :name => "MyString",
      :link => "MyString"
    ))
  end

  it "renders the edit admin_quick_link form" do
    render

    assert_select "form[action=?][method=?]", admin_quick_link_path(@admin_quick_link), "post" do

      assert_select "input#admin_quick_link_name[name=?]", "admin_quick_link[name]"

      assert_select "input#admin_quick_link_link[name=?]", "admin_quick_link[link]"
    end
  end
end
