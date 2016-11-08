require 'rails_helper'

RSpec.describe "admin/courses/show", type: :view do
  before(:each) do
    @admin_course = assign(:admin_course, Admin::Course.create!(
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
