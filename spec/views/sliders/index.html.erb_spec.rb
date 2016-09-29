require 'rails_helper'

RSpec.describe "sliders/index", type: :view do
  before(:each) do
    assign(:sliders, [
      Slider.create!(
        :name => "Name"
      ),
      Slider.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of sliders" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
