require 'rails_helper'

RSpec.describe "admin/social_media/show", type: :view do
  before(:each) do
    @admin_social_medium = assign(:admin_social_medium, Admin::SocialMedium.create!(
      :name => "Name",
      :link => "Link",
      icon: FactoryGirl.create(:admin_icon, name: "MyString2")
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Link/)
    expect(rendered).to match(/MyString2/)
  end
end
