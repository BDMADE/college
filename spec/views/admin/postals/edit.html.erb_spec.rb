require 'rails_helper'

RSpec.describe "admin/postals/edit", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_postal = assign(:admin_postal, Admin::Postal.create!(
      :name => "MyString",
      :details => "MyString",
      :type => Admin::PostalType.create(:name=>"name")
    ))
  end

  it "renders the edit admin_postal form" do
    render

    assert_select "form[action=?][method=?]", admin_postal_path(@admin_postal), "post" do

      assert_select "input#admin_postal_name[name=?]", "admin_postal[name]"

      assert_select "input#admin_postal_details[name=?]", "admin_postal[details]"

      assert_select "select#admin_postal_type_id[name=?]", "admin_postal[type_id]"
    end
  end
end
