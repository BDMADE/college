require 'rails_helper'

RSpec.describe "admin/testimonials/show", type: :view do
  before(:each) do
    @admin_testimonial = assign(:admin_testimonial, Admin::Testimonial.create!(
        name:"MyString1",
        description: "MyText1",
        department: FactoryGirl.create(:admin_department,:name=>"chem",:short_form=>"CH"),
        semester: FactoryGirl.create(:admin_semester,:name=>"second",:short_form=>"2nd")
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/chem/)
    expect(rendered).to match(/second/)
  end
end
