require 'rails_helper'

RSpec.describe "admin/quick_links/new", type: :view do
  before(:each) do
    assign(:admin_quick_link, Admin::QuickLink.new(
      :name => "MyString",
      :link => "MyString"
    ))
  end

  it "renders new admin_quick_link form" do
    render

    assert_select "form[action=?][method=?]", admin_quick_links_path, "post" do

      assert_select "input#admin_quick_link_name[name=?]", "admin_quick_link[name]"

      assert_select "input#admin_quick_link_link[name=?]", "admin_quick_link[link]"
    end
  end
end
