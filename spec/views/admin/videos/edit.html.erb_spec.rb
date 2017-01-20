require 'rails_helper'

RSpec.describe "admin/videos/edit", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_video = assign(:admin_video, Admin::Video.create!(
      :name => "MyString",
      :link => "MyString",
      :details => "MyString"
    ))
  end

  it "renders the edit admin_video form" do
    render

    assert_select "form[action=?][method=?]", admin_video_path(@admin_video), "post" do

      assert_select "input#admin_video_name[name=?]", "admin_video[name]"

      assert_select "input#admin_video_link[name=?]", "admin_video[link]"

      assert_select "input#admin_video_details[name=?]", "admin_video[details]"
    end
  end
end
