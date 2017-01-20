require 'rails_helper'

RSpec.describe "admin/social_media/index", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_social_media, [
      Admin::SocialMedium.create!(
        :name => "Name",
        :link => "Link",
        icon: FactoryGirl.create(:admin_icon, name: "MyString2")
      )
    ])
  end

  it "renders a list of admin/social_media" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "Link".to_s, :count => 1
    assert_select "tr>td", :text => "MyString2".to_s, :count => 1
  end
end
