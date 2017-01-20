require 'rails_helper'

RSpec.describe "admin/scholarship_groups/index", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_scholarship_groups, [
      Admin::ScholarshipGroup.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of admin/scholarship_groups" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
  end
end
