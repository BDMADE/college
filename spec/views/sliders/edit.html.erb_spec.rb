require 'rails_helper'

RSpec.describe "sliders/edit", type: :view do
  before(:each) do
    @slider = assign(:slider, Slider.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit slider form" do
    render

    assert_select "form[action=?][method=?]", slider_path(@slider), "post" do

      assert_select "input#slider_name[name=?]", "slider[name]"
    end
  end
end
