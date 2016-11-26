require 'rails_helper'

RSpec.describe "admin/videos/new", type: :view do
  before(:each) do
    assign(:admin_video, Admin::Video.new(
      :name => "MyString",
      :link => "MyString",
      :details => "MyString"
    ))
  end

  it "renders new admin_video form" do
    render

    assert_select "form[action=?][method=?]", admin_videos_path, "post" do

      assert_select "input#admin_video_name[name=?]", "admin_video[name]"

      assert_select "input#admin_video_link[name=?]", "admin_video[link]"

      assert_select "input#admin_video_details[name=?]", "admin_video[details]"
    end
  end
end
