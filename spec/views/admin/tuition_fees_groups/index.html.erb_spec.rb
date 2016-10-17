require 'rails_helper'

RSpec.describe "admin/tuition_fees_groups/index", type: :view do
  before(:each) do
    assign(:admin_tuition_fees_groups, [
      Admin::TuitionFeesGroup.create!(
        :name => "Name"
      ),
      Admin::TuitionFeesGroup.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of admin/tuition_fees_groups" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
