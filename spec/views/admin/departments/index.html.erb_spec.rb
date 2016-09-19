require 'rails_helper'

RSpec.describe "admin/departments/index", type: :view do
  before(:each) do
    assign(:admin_departments, [
      Admin::Department.create!(
        :name => "Name",
        :short_form => "Short Form"
      ),
      Admin::Department.create!(
        :name => "Name",
        :short_form => "Short Form"
      )
    ])
  end

  it "renders a list of admin/departments" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Short Form".to_s, :count => 2
  end
end
