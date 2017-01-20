require 'rails_helper'

RSpec.describe "admin/postals/show", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_postal = assign(:admin_postal, Admin::Postal.create!(
      :name => "Name",
      :details => "Details",
      :type => Admin::PostalType.create(:name=>"name")
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Details/)
    expect(rendered).to match(/name/)
  end
end
