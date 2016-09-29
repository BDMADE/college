require 'rails_helper'

RSpec.describe "sliders/show", type: :view do
  before(:each) do
    @slider = assign(:slider, Slider.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
