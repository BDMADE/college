require 'rails_helper'

RSpec.describe "admin/websites/show", type: :view do
  before(:each) do
    @admin_website = assign(:admin_website, Admin::Website.create!(
      :name => "Name",
      :details => "Details"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Details/)
  end
end
