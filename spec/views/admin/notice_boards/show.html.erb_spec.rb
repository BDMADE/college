require 'rails_helper'

RSpec.describe "admin/notice_boards/show", type: :view do
  before(:each) do
    @admin_notice_board = assign(:admin_notice_board, Admin::NoticeBoard.create!(
      :name => "Name",
      :notice_type => "Notice Type",
      :semester => FactoryGirl.create(:admin_semester),
      :department => FactoryGirl.create(:admin_department)
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Notice Type/)
    expect(rendered).to match(/Semester/)
    expect(rendered).to match(/Department/)
  end
end
