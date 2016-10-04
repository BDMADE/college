require 'rails_helper'

RSpec.describe "admin/abouts/show", type: :view do
  before(:each) do
    @admin_about = assign(:admin_about, Admin::About.create!(
      :slug => "Slug",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/MyText/)
  end
end
