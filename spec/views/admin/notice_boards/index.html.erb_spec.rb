require 'rails_helper'

RSpec.describe "admin/notice_boards/index", type: :view do
  before(:each) do
    assign(:admin_notice_boards, [
      Admin::NoticeBoard.create!(
        :name => "Name",
        :notice_type => "Notice Type",
        :semester => FactoryGirl.create(:admin_semester),
        :department => FactoryGirl.create(:admin_department)
      )
    ])
  end

  it "renders a list of admin/notice_boards" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "Notice Type".to_s, :count => 1
  end
end
