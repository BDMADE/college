require 'rails_helper'

RSpec.describe "admin/abouts/index", type: :view do
  before(:each) do
    assign(:admin_abouts, [
      Admin::About.create!(
        :slug => 'About',
        :description => "This is about"
      )
    ])
  end

  it "renders a list of admin/abouts" do
    render

    assert_select 'tr>td', :text => 'About'.to_s, :count => 1
    assert_select 'tr>td', :text => 'This is about'.to_s, :count => 1

  end
end
