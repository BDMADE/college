require 'rails_helper'

RSpec.describe "admin/contacts/index", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_contacts, [
      Admin::Contact.create!(
        :name => "Name",
        :email => "Email",
        :phone => 2,
        :message => "MyText"
      ),
      Admin::Contact.create!(
        :name => "Name",
        :email => "Email",
        :phone => 2,
        :message => "MyText"
      )
    ])
  end

  it "renders a list of admin/contacts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
