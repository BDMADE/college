require 'rails_helper'

RSpec.describe "admin/sliders/index", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_sliders, [
      Admin::Slider.create!(
        :name => "Name",
        :caption_1 => "Caption 1",
        :caption_2 => "Caption 2"
      )
    ])
  end

  it "renders a list of admin/sliders" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "Caption 1".to_s, :count => 1
    assert_select "tr>td", :text => "Caption 2".to_s, :count => 1
  end
end
