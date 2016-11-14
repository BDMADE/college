require 'rails_helper'

RSpec.describe "admin/google_maps/show", type: :view do
  before(:each) do
    @admin_google_map = assign(:admin_google_map, Admin::GoogleMap.create!(
      :name => "Name",
      :latitude => "Latitude",
      :longitude => "Longitude",
      :google_api_key => "Google Api Key"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Latitude/)
    expect(rendered).to match(/Longitude/)
    expect(rendered).to match(/Google Api Key/)
  end
end
