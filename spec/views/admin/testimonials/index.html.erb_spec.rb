require 'rails_helper'

RSpec.describe "admin/testimonials/index", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_testimonials, [
      Admin::Testimonial.create!(
          name:"Name",
          description: "MyText",
          department: FactoryGirl.create(:admin_department,:name=>"phy",:short_form=>"ph"),
          semester: FactoryGirl.create(:admin_semester,:name=>"first",:short_form=>"1st")
      )
    ])
  end

  it "renders a list of admin/testimonials" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "MyText".to_s, :count => 1
    assert_select "tr>td", :text =>"phy".to_s, :count => 1
    assert_select "tr>td", :text => "first".to_s, :count => 1
  end
end
