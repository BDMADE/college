require 'rails_helper'

RSpec.describe "admin/events/index", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_events, [
      Admin::Event.create!(
        :name => "Name",
        :details => "Text",
        :starting_time => "Starting Time",
        :ending_time => "Ending Time",
        place:"Mystring",
        icon: FactoryGirl.create(:admin_icon,:name=>"az")
      )

    ])
  end

  it "renders a list of admin/events" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "Text".to_s, :count => 1
    assert_select "tr>td", :text => "Starting Time".to_s, :count => 1
    assert_select "tr>td", :text => "Ending Time".to_s, :count => 1
    assert_select "tr>td", :text => "az".to_s, :count => 1
  end
end
