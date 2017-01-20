require 'rails_helper'

RSpec.describe "admin/tuition_fees_groups/index", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_tuition_fees_groups, [
      Admin::TuitionFeesGroup.create!(
        :name => "Name"
      )

    ])
  end

  it "renders a list of admin/tuition_fees_groups" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
  end
end
