require 'rails_helper'

RSpec.describe "admin/quick_links/index", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_quick_links, [
      Admin::QuickLink.create!(
        :name => "Name",
        :link => "Link"
      )
    ])
  end

  it "renders a list of admin/quick_links" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "Link".to_s, :count => 1
  end
end
