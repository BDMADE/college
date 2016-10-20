require 'rails_helper'

RSpec.describe "admin/admission_fees_statuses/index", type: :view do
  before(:each) do
    assign(:admin_admission_fees_statuses, [
      Admin::AdmissionFeesStatus.create!(
        :name => "Name",
        :value => 2
      ),
      Admin::AdmissionFeesStatus.create!(
        :name => "Name",
        :value => 2
      )
    ])
  end

  it "renders a list of admin/admission_fees_statuses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
