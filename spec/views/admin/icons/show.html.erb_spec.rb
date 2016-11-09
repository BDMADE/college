require 'rails_helper'

RSpec.describe "admin/icons/show", type: :view do
  before(:each) do
    @admin_icon = assign(:admin_icon, Admin::Icon.create!(
      :name => "Name",
      :icon => "Icon"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Icon/)
  end
end
