require 'rails_helper'

RSpec.describe "admin/abouts/edit", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_about = assign(:admin_about, Admin::About.create!(
      :slug => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit admin_about form" do
    render

    assert_select "form[action=?][method=?]", admin_about_path(@admin_about), "post" do

      assert_select "input#admin_about_slug[name=?]", "admin_about[slug]"

      assert_select "textarea#admin_about_description[name=?]", "admin_about[description]"
    end
  end
end
