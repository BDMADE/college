require 'rails_helper'

RSpec.describe "admin/postals/index", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_postals, [
      Admin::Postal.create!(
        :name => "Name",
        :details => "Details",
        :type => Admin::PostalType.create(:name=>"name")
      )

    ])
  end

  it "renders a list of admin/postals" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "Details".to_s, :count => 1
    assert_select "tr>td", :text => "name".to_s, :count => 1
  end
end
