require 'rails_helper'

RSpec.describe "admin/videos/index", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_videos, [
      Admin::Video.create!(
        :name => "Name",
        :link => "Link",
        :details => "Details"
      )
    ])
  end

  it "renders a list of admin/videos" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "Link".to_s, :count => 1
    assert_select "tr>td", :text => "Details".to_s, :count => 1
  end
end
