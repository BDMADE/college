require 'rails_helper'

RSpec.describe "admin/admission_processes/show", type: :view do
  before(:each) do
    @admin_admission_process = assign(:admin_admission_process, Admin::AdmissionProcess.create!(
      :step => 2,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
  end
end
