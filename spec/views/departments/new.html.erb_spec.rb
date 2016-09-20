require 'rails_helper'

RSpec.describe "departments/new", type: :view do
  before(:each) do
    assign(:department, Department.new(
      :name => "MyString",
      :short_form => "MyString"
    ))
  end

  it "renders new department form" do
    render

    assert_select "form[action=?][method=?]", departments_path, "post" do

      assert_select "input#department_name[name=?]", "department[name]"

      assert_select "input#department_short_form[name=?]", "department[short_form]"
    end
  end
end
