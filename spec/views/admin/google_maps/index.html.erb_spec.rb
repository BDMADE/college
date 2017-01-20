require 'rails_helper'

RSpec.describe "admin/google_maps/index", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_google_maps, [
      Admin::GoogleMap.create!(
        :name => "Name",
        :latitude => "Latitude",
        :longitude => "Longitude",
        :google_api_key => "Google Api Key"
      )
    ])
  end

  it "renders a list of admin/google_maps" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "Latitude".to_s, :count => 1
    assert_select "tr>td", :text => "Longitude".to_s, :count => 1
    assert_select "tr>td", :text => "Google Api Key".to_s, :count => 1
  end
end
