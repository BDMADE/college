require 'rails_helper'

RSpec.describe "admin/notice_boards/edit", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_notice_board = assign(:admin_notice_board, Admin::NoticeBoard.create!(
      :name => 'MyString',
      :notice_type => 'MyString',
      :semester => FactoryGirl.create(:admin_semester),
      :department => FactoryGirl.create(:admin_department)
    ))
  end

  it "renders the edit admin_notice_board form" do
    render

    assert_select "form[action=?][method=?]", admin_notice_board_path(@admin_notice_board), 'post' do
      assert_select "input#admin_notice_board_name[name=?]", "admin_notice_board[name]"
    end
  end
end
