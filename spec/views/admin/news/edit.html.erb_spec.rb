require 'rails_helper'

RSpec.describe "admin/news/edit", type: :view do
  before(:each) do
    @admin_news = assign(:admin_news, Admin::News.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit admin_news form" do
    render

    assert_select "form[action=?][method=?]", admin_news_path(@admin_news), "post" do

      assert_select "input#admin_news_name[name=?]", "admin_news[name]"

      assert_select "textarea#admin_news_description[name=?]", "admin_news[description]"
    end
  end
end
