require 'rails_helper'

RSpec.describe "admin/semesters/index", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_semesters, [
      Admin::Semester.create!(
        :name => "first semester",
        :short_form => "1st"
      )      
    ])
  end
  it 'renders a list of admin/semesters' do
    render
    assert_select 'tr>td', :text => 'first semester'.to_s, :count => 1
    assert_select 'tr>td', :text => '1st'.to_s, :count => 1
  end

end
