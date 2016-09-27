require 'rails_helper'

RSpec.describe "admin/semesters/index", type: :view do
  before(:each) do
    assign(:admin_semesters, [
      Admin::Semester.create!(
        :name => "Name",
        :short_form => "Short Form"
      ),
      Admin::Semester.create!(
        :name => "Name",
        :short_form => "Short Form"
      )
    ])
  end
  it 'renders a list of admin/semesters' do
    render
    assert_select 'tr>td', :text => 'first semester'.to_s, :count => 1
    assert_select 'tr>td', :text => '1st'.to_s, :count => 1
  end

end
