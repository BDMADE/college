require 'rails_helper'

RSpec.describe 'admin/departments/index', type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    assign(:admin_departments, [
      Admin::Department.create!(
        :name => 'Computer Science',
        :short_form => 'CS'
      )
    ])
  end

  it 'renders a list of admin/departments' do
    render
    assert_select 'tr>td', :text => 'Computer Science'.to_s, :count => 1
    assert_select 'tr>td', :text => 'CS'.to_s, :count => 1
  end
end
