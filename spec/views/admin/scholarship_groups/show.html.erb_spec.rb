require 'rails_helper'

RSpec.describe "admin/scholarship_groups/show", type: :view do
  before(:each) do
    @admin_scholarship_group = assign(:admin_scholarship_group, Admin::ScholarshipGroup.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
