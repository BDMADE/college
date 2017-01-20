require 'rails_helper'

RSpec.describe "admin/postal_types/edit", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_postal_type = assign(:admin_postal_type, Admin::PostalType.create!(
      :name => "MyString",
      #:icon => nil,
      icon: FactoryGirl.create(:admin_icon)
    ))
  end

  it "renders the edit admin_postal_type form" do
    render

    assert_select "form[action=?][method=?]", admin_postal_type_path(@admin_postal_type), "post" do

      assert_select "input#admin_postal_type_name[name=?]", "admin_postal_type[name]"

      assert_select "select#admin_postal_type_icon_id[name=?]", "admin_postal_type[icon_id]"
    end
  end
end
