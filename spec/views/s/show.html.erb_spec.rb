require 'rails_helper'

RSpec.describe "admins/show", type: :view do
  before(:each) do
    @admin = assign(:admin, Admin.create!(
      :Department => "Department",
      :name => "Name",
      :short_form => "Short Form"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Department/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Short Form/)
  end
end
