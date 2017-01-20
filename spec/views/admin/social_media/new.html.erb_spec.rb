require 'rails_helper'

RSpec.describe "admin/social_media/new", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_social_medium, Admin::SocialMedium.new(
      :name => "MyString",
      :link => "MyString",
      :icon => nil
    ))
  end

  it "renders new admin_social_medium form" do
    render

    assert_select "form[action=?][method=?]", admin_social_media_path, "post" do

      assert_select "input#admin_social_medium_name[name=?]", "admin_social_medium[name]"

      assert_select "input#admin_social_medium_link[name=?]", "admin_social_medium[link]"

      assert_select "select#admin_social_medium_icon_id[name=?]", "admin_social_medium[icon_id]"
    end
  end
end
