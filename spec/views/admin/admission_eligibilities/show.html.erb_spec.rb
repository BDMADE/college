require 'rails_helper'

RSpec.describe "admin/admission_eligibilities/show", type: :view do
  before(:each) do
    @admin_admission_eligibility = assign(:admin_admission_eligibility, Admin::AdmissionEligibility.create!(
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
