require 'rails_helper'

RSpec.describe "admin/google_maps/new", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_google_map, Admin::GoogleMap.new(
      :name => "MyString",
      :latitude => "MyString",
      :longitude => "MyString",
      :google_api_key => "MyString"
    ))
  end

  it "renders new admin_google_map form" do
    render

    assert_select "form[action=?][method=?]", admin_google_maps_path, "post" do

      assert_select "input#admin_google_map_name[name=?]", "admin_google_map[name]"

      assert_select "input#admin_google_map_latitude[name=?]", "admin_google_map[latitude]"

      assert_select "input#admin_google_map_longitude[name=?]", "admin_google_map[longitude]"

      assert_select "input#admin_google_map_google_api_key[name=?]", "admin_google_map[google_api_key]"
    end
  end
end
