require 'rails_helper'

RSpec.describe "admin/notice_boards/new", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_notice_board, Admin::NoticeBoard.new(
      :name => "MyString",
      :notice_type => "MyString",
      :semester => FactoryGirl.create(:admin_semester),
      :department => FactoryGirl.create(:admin_department)
    ))
  end

  it "renders new admin_notice_board form" do
    render

    assert_select "form[action=?][method=?]", admin_notice_boards_path, "post" do
      assert_select "input#admin_notice_board_name[name=?]", "admin_notice_board[name]"
    end
  end
end
