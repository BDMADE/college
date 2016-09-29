require 'rails_helper'

RSpec.describe "sliders/new", type: :view do
  before(:each) do
    assign(:slider, Slider.new(
      :name => "MyString"
    ))
  end

  it "renders new slider form" do
    render

    assert_select "form[action=?][method=?]", sliders_path, "post" do

      assert_select "input#slider_name[name=?]", "slider[name]"
    end
  end
end
