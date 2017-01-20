require 'rails_helper'

RSpec.describe "admin/mini_sliders/new", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_mini_slider, Admin::MiniSlider.new(
      :name => "MyString"
    ))
  end

  it "renders new admin_mini_slider form" do
    render

    assert_select "form[action=?][method=?]", admin_mini_sliders_path, "post" do

      assert_select "input#admin_mini_slider_name[name=?]", "admin_mini_slider[name]"
    end
  end
end
