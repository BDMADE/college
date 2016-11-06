require 'rails_helper'

RSpec.describe "admin/scholarships/show", type: :view do
  before(:each) do
    @admin_scholarship = assign(:admin_scholarship, Admin::Scholarship.create!(
      :name => "Name",
      :discount => 2,
      :condition => "Condition",
      :details => "MyText",
      :group => FactoryGirl.create(:admin_scholarship_group, :name=>"az")
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Condition/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/az/)
  end
end
