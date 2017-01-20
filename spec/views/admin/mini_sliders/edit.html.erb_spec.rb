require 'rails_helper'

RSpec.describe "admin/mini_sliders/edit", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_mini_slider = assign(:admin_mini_slider, Admin::MiniSlider.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit admin_mini_slider form" do
    render

    assert_select "form[action=?][method=?]", admin_mini_slider_path(@admin_mini_slider), "post" do

      assert_select "input#admin_mini_slider_name[name=?]", "admin_mini_slider[name]"
    end
  end
end
