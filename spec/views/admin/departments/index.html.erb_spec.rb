require 'rails_helper'

RSpec.describe "admin/departments/index", type: :view do
  before(:each) do
    assign(:admin_departments, [
      Admin::Department.create!(
        :name => "Name",
        :short_form => "Short Form"
      ),
      Admin::Department.create!(
        :name => "Name",
        :short_form => "Short Form"
      )
    ])
  end


end
