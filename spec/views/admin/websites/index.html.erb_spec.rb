require 'rails_helper'

RSpec.describe "admin/websites/index", type: :view do
  before(:each) do
    assign(:admin_websites, [
      Admin::Website.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of admin/websites" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
  end
end
