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


end
