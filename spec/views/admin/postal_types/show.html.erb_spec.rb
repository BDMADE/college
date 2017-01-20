require 'rails_helper'

RSpec.describe "admin/postal_types/show", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_postal_type = assign(:admin_postal_type, Admin::PostalType.create!(
      :name => "Name",
      icon: FactoryGirl.create(:admin_icon,:name=>"str")
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/str/)
  end
end
