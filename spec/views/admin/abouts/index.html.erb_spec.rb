require 'rails_helper'

RSpec.describe "admin/abouts/index", type: :view do
  before(:each) do
    assign(:admin_abouts, [
      Admin::About.create!(
        :slug => "Slug",
        :description => "MyText"
      ),
      Admin::About.create!(
        :slug => "Slug",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of admin/abouts" do
    render
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
