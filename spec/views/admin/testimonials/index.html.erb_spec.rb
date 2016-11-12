require 'rails_helper'

RSpec.describe "admin/testimonials/index", type: :view do
  before(:each) do
    assign(:admin_testimonials, [
      Admin::Testimonial.create!(
          name:"Name",
          description: "MyText",
          department: FactoryGirl.create(:admin_department),
          semester: FactoryGirl.create(:admin_semester)
      ),
      Admin::Testimonial.create!(
          name:"Name1",
          description: "MyText",
          department: FactoryGirl.create(:admin_department,:name=>"az",:short_form=>"ist"),
          semester: FactoryGirl.create(:admin_semester,:name=>"az",:short_form=>"ist")
      )
    ])
  end

  it "renders a list of admin/testimonials" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 0
    assert_select "tr>td", :text => nil.to_s, :count => 0
  end
end
