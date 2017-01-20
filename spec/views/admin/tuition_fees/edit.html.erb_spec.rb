require 'rails_helper'

RSpec.describe "admin/tuition_fees/edit", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_tuition_fee = assign(:admin_tuition_fee, Admin::TuitionFee.create!(
      :name => "MyString",
      :payable => 1,
      :group => FactoryGirl.create(:admin_tuition_fees_group)
    ))
  end

  it "renders the edit admin_tuition_fee form" do
    render

    assert_select "form[action=?][method=?]", admin_tuition_fee_path(@admin_tuition_fee), "post" do

      assert_select "input#admin_tuition_fee_name[name=?]", "admin_tuition_fee[name]"

      assert_select "input#admin_tuition_fee_payable[name=?]", "admin_tuition_fee[payable]"

      assert_select "select#admin_tuition_fee_group_id[name=?]", "admin_tuition_fee[group_id]"
    end
  end
end
