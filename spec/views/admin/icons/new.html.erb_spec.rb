require 'rails_helper'

RSpec.describe "admin/icons/new", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_icon, Admin::Icon.new(
      :name => "MyString",
      :icon => "MyString"
    ))
  end

  it "renders new admin_icon form" do
    render

    assert_select "form[action=?][method=?]", admin_icons_path, "post" do

      assert_select "input#admin_icon_name[name=?]", "admin_icon[name]"

      assert_select "input#admin_icon_icon[name=?]", "admin_icon[icon]"
    end
  end
end
