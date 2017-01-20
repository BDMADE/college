require 'rails_helper'

RSpec.describe "admin/semesters/show", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_semester = assign(:admin_semester, Admin::Semester.create!(
      :name => "Name",
      :short_form => "Short Form"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Short Form/)
  end
end
