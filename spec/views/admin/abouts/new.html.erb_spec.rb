require 'rails_helper'

RSpec.describe "admin/abouts/new", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_about, Admin::About.new(
      :slug => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new admin_about form" do
    render

    assert_select "form[action=?][method=?]", admin_abouts_path, "post" do

      assert_select "input#admin_about_slug[name=?]", "admin_about[slug]"

      assert_select "textarea#admin_about_description[name=?]", "admin_about[description]"
    end
  end
end
