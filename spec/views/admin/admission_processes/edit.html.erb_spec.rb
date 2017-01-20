require 'rails_helper'

RSpec.describe "admin/admission_processes/edit", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_admission_process = assign(:admin_admission_process, Admin::AdmissionProcess.create!(
      :step => 1,
      :name => "MyString"
    ))
  end

  it "renders the edit admin_admission_process form" do
    render

    assert_select "form[action=?][method=?]", admin_admission_process_path(@admin_admission_process), "post" do

      assert_select "input#admin_admission_process_step[name=?]", "admin_admission_process[step]"

      assert_select "input#admin_admission_process_name[name=?]", "admin_admission_process[name]"
    end
  end
end
