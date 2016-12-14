require 'rails_helper'

RSpec.describe "admin/mini_sliders/show", type: :view do
  before(:each) do
    @admin_mini_slider = assign(:admin_mini_slider, Admin::MiniSlider.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
