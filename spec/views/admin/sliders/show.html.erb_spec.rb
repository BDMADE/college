require 'rails_helper'

RSpec.describe "admin/sliders/show", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_slider = assign(:admin_slider, Admin::Slider.create!(
      :name => "Name",
      :caption_1 => "Caption 1",
      :caption_2 => "Caption 2"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Caption 1/)
    expect(rendered).to match(/Caption 2/)
  end
end
