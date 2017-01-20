require 'rails_helper'

RSpec.describe "admin/social_media/edit", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_social_medium = assign(:admin_social_medium, Admin::SocialMedium.create!(
      :name => "MyString",
      :link => "MyString",
      icon: FactoryGirl.create(:admin_icon, name: "MyString2")
    ))
  end

  it "renders the edit admin_social_medium form" do
    render

    assert_select "form[action=?][method=?]", admin_social_medium_path(@admin_social_medium), "post" do

      assert_select "input#admin_social_medium_name[name=?]", "admin_social_medium[name]"

      assert_select "input#admin_social_medium_link[name=?]", "admin_social_medium[link]"

      assert_select "select#admin_social_medium_icon_id[name=?]", "admin_social_medium[icon_id]"
    end
  end
end
