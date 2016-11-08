require 'rails_helper'

RSpec.describe "admin/news/show", type: :view do
  before(:each) do
    @admin_news = assign(:admin_news, Admin::News.create!(
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
