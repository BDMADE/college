require 'rails_helper'

RSpec.describe "admin/courses/index", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_courses, [
      Admin::Course.create!(
        :name => "Name",
        :description => "MyText"
      ),
    ])
  end

  it "renders a list of admin/courses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "MyText".to_s, :count => 1
  end
end
