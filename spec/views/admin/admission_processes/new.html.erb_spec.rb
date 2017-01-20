require 'rails_helper'

RSpec.describe "admin/admission_processes/new", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_admission_process, Admin::AdmissionProcess.new(
      :step => 1,
      :name => "MyString"
    ))
  end

  it "renders new admin_admission_process form" do
    render

    assert_select "form[action=?][method=?]", admin_admission_processes_path, "post" do

      assert_select "input#admin_admission_process_step[name=?]", "admin_admission_process[step]"

      assert_select "input#admin_admission_process_name[name=?]", "admin_admission_process[name]"
    end
  end
end
