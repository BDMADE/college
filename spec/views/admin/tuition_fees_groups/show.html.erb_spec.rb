require 'rails_helper'

RSpec.describe "admin/tuition_fees_groups/show", type: :view do
  before(:each) do
    @admin_tuition_fees_group = assign(:admin_tuition_fees_group, Admin::TuitionFeesGroup.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
