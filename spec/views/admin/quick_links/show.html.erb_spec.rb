require 'rails_helper'

RSpec.describe "admin/quick_links/show", type: :view do
  before(:each) do
    @admin_quick_link = assign(:admin_quick_link, Admin::QuickLink.create!(
      :name => "Name",
      :link => "Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Link/)
  end
end
