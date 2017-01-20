require 'rails_helper'

RSpec.describe "admin/subjects/index", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_subjects, [
      Admin::Subject.create!(
        course: FactoryGirl.create(:admin_course,:name=>"Name1",:description=>"desc"),
        semester: FactoryGirl.create(:admin_semester,:name=>"az",:short_form=>"ist")
      )
    ])
  end

  it "renders a list of admin/subjects" do
    render
    assert_select "tr>td", :text => "Name1".to_s, :count => 1
    assert_select "tr>td", :text => "az".to_s, :count => 1
  end
end
