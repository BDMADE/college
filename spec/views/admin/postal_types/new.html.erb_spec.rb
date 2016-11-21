require 'rails_helper'

RSpec.describe "admin/postal_types/new", type: :view do
  before(:each) do
    assign(:admin_postal_type, Admin::PostalType.new(
      :name => "MyString",
      :icon => nil
    ))
  end

  it "renders new admin_postal_type form" do
    render

    assert_select "form[action=?][method=?]", admin_postal_types_path, "post" do

      assert_select "input#admin_postal_type_name[name=?]", "admin_postal_type[name]"

      assert_select "select#admin_postal_type_icon_id[name=?]", "admin_postal_type[icon_id]"
    end
  end
end
