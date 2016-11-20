require 'rails_helper'

RSpec.describe "admin/postal_types/index", type: :view do
  before(:each) do
    assign(:admin_postal_types, [
      Admin::PostalType.create!(
        :name => "Name",
        #:icon => nil
        icon: FactoryGirl.create(:admin_icon,:name=>"str")
      )
    ])
  end

  it "renders a list of admin/postal_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "str".to_s, :count => 1
  end
end
