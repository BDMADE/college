require 'rails_helper'

RSpec.describe "departments/index", type: :view do
  before(:each) do
    assign(:departments, [
      Department.create!(
        :name => "Name",
        :short_form => "Short Form"
      ),
      Department.create!(
        :name => "Name",
        :short_form => "Short Form"
      )
    ])
  end

  it "renders a list of departments" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Short Form".to_s, :count => 2
  end
end
