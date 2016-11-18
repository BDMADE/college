require 'rails_helper'

RSpec.describe "admin/websites/new", type: :view do
  before(:each) do
    assign(:admin_website, Admin::Website.new(
      :name => "MyString",
      :details => "MyText"
    ))
  end

  it "renders new admin_website form" do
    render

    assert_select "form[action=?][method=?]", admin_websites_path, "post" do

      assert_select "input#admin_website_name[name=?]", "admin_website[name]"
      assert_select "textarea#admin_website_details[name=?]", "admin_website[details]"
    end
  end
end
