require 'rails_helper'

RSpec.describe "admin/subjects/show", type: :view do
  before(:each) do
    @admin_subject = assign(:admin_subject, Admin::Subject.create!(
      :name => "Name",
      course: FactoryGirl.create(:admin_course,:name=>"Name",:description=>"desc"),
      semester: FactoryGirl.create(:admin_semester,:name=>"az",:short_form=>"ist")
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/az/)
  end
end
