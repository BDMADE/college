require 'rails_helper'

RSpec.describe "admin/mini_sliders/index", type: :view do
  before(:each) do
    assign(:admin_mini_sliders, [
      Admin::MiniSlider.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of admin/mini_sliders" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
  end
end
