require 'rails_helper'

RSpec.describe "admin/sliders/new", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_slider, Admin::Slider.new(
      :name => "MyString",
      :caption_1 => "MyString",
      :caption_2 => "MyString"
    ))
  end

  it "renders new admin_slider form" do
    render

    assert_select "form[action=?][method=?]", admin_sliders_path, "post" do

      assert_select "input#admin_slider_name[name=?]", "admin_slider[name]"

      assert_select "input#admin_slider_caption_1[name=?]", "admin_slider[caption_1]"

      assert_select "input#admin_slider_caption_2[name=?]", "admin_slider[caption_2]"
    end
  end
end
