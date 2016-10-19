require 'rails_helper'

RSpec.describe "admin/tuition_fees/index", type: :view do
  before(:each) do
    assign(:admin_tuition_fees, [
      Admin::TuitionFee.create!(
        :name => "Name",
        :payable => 2,
        :group => nil
      ),
      Admin::TuitionFee.create!(
        :name => "Name",
        :payable => 2,
        :group => nil
      )
    ])
  end

  it "renders a list of admin/tuition_fees" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
