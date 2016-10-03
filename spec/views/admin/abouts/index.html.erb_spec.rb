require 'rails_helper'

RSpec.describe "admin/abouts/index", type: :view do
  before(:each) do
    assign(:admin_abouts, [
      Admin::About.create!(
        :slug => 'first semester',
        :description => "1st"
      ),
      Admin::About.create!(
        :slug => "Slug",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of admin/abouts" do
    render

    assert_select 'tr>td', :text => 'first semester'.to_s, :count => 1
    assert_select 'tr>td', :text => '1st'.to_s, :count => 1

  end
end
