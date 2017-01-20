require 'rails_helper'

RSpec.describe "admin/tuition_fees/index", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_tuition_fees, [
      Admin::TuitionFee.create!(
        :name => "Name",
        :payable => 2,
        :group => FactoryGirl.create(:admin_tuition_fees_group)
      )      
    ])
  end

  it "renders a list of admin/tuition_fees" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => 2.to_s, :count => 1

  end
end
