require 'rails_helper'

RSpec.describe "admin/scholarship_groups/index", type: :view do
  before(:each) do
    assign(:admin_scholarship_groups, [
      Admin::ScholarshipGroup.create!(
        :name => "Name"
      ),
      Admin::ScholarshipGroup.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of admin/scholarship_groups" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
