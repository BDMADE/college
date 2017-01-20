require 'rails_helper'

RSpec.describe "admin/scholarships/index", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_scholarships, [
      Admin::Scholarship.create!(
        :name => "Name",
        :discount => 2,
        :condition => "Condition",
        :details => "MyText",
        :group => FactoryGirl.create(:admin_scholarship_group,:name=> "az")
      )

    ])
  end

  it "renders a list of admin/scholarships" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => 2.to_s, :count => 1
    assert_select "tr>td", :text => "Condition".to_s, :count => 1
    assert_select "tr>td", :text => "MyText".to_s, :count => 1
    assert_select "tr>td", :text => "az".to_s, :count => 1
  end
end
