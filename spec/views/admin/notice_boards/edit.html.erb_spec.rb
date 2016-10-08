require 'rails_helper'

RSpec.describe "admin/notice_boards/edit", type: :view do
  before(:each) do
    @admin_notice_board = assign(:admin_notice_board, Admin::NoticeBoard.create!(
      :name => "MyString",
      :notice_type => "MyString",
      :semester => nil,
      :department => nil
    ))
  end

  it "renders the edit admin_notice_board form" do
    render

    assert_select "form[action=?][method=?]", admin_notice_board_path(@admin_notice_board), "post" do

      assert_select "input#admin_notice_board_name[name=?]", "admin_notice_board[name]"

      assert_select "input#admin_notice_board_notice_type[name=?]", "admin_notice_board[notice_type]"

      assert_select "input#admin_notice_board_semester_id[name=?]", "admin_notice_board[semester_id]"

      assert_select "input#admin_notice_board_department_id[name=?]", "admin_notice_board[department_id]"
    end
  end
end