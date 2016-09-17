require 'rails_helper'

RSpec.describe "admins/index", type: :view do
  before(:each) do
    assign(:admins, [
      Admin.create!(
        :Department => "Department",
        :name => "Name",
        :short_form => "Short Form"
      ),
      Admin.create!(
        :Department => "Department",
        :name => "Name",
        :short_form => "Short Form"
      )
    ])
  end

  it "renders a list of admins" do
    render
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Short Form".to_s, :count => 2
  end
end
