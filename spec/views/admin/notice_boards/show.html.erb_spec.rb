require 'rails_helper'

RSpec.describe "admin/notice_boards/show", type: :view do
  before(:each) do
    @admin_notice_board = assign(:admin_notice_board, Admin::NoticeBoard.create!(
      :name => "Name",
      :notice_type => "Notice Type",
      :semester => nil,
      :department => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Notice Type/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
