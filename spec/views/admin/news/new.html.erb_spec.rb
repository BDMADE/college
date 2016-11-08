require 'rails_helper'

RSpec.describe "admin/news/new", type: :view do
  before(:each) do
    assign(:admin_news, Admin::News.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new admin_news form" do
    render

    assert_select "form[action=?][method=?]", admin_news_index_path, "post" do

      assert_select "input#admin_news_name[name=?]", "admin_news[name]"

      assert_select "textarea#admin_news_description[name=?]", "admin_news[description]"
    end
  end
end
