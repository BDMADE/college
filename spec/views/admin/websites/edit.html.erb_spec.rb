require 'rails_helper'

RSpec.describe "admin/websites/edit", type: :view do
  before(:each) do
    @admin_website = assign(:admin_website, Admin::Website.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit admin_website form" do
    render

    assert_select "form[action=?][method=?]", admin_website_path(@admin_website), "post" do

      assert_select "input#admin_website_name[name=?]", "admin_website[name]"
    end
  end
end
