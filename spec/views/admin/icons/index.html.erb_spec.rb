require 'rails_helper'

RSpec.describe "admin/icons/index", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_icons, [
      Admin::Icon.create!(
        :name => "Name",
        :icon => "Icon"
      )
    ])
  end

  it "renders a list of admin/icons" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "Icon".to_s, :count => 1
  end
end
