require 'rails_helper'

RSpec.describe "admin/tuition_fees/show", type: :view do
  before(:each) do
    @admin_tuition_fee = assign(:admin_tuition_fee, Admin::TuitionFee.create!(
      :name => "Name",
      :payable => 2,
      :group =>  FactoryGirl.create(:admin_tuition_fees_group)
    )
    )
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
