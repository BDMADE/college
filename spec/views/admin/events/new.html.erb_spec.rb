require 'rails_helper'

RSpec.describe "admin/events/new", type: :view do
  before(:each) do
    assign(:admin_event, Admin::Event.new(
      :name => "MyString",
      :starting_time => "MyString",
      :ending_time => "MyString",
      :icon => nil
    ))
  end

  it "renders new admin_event form" do
    render

    assert_select "form[action=?][method=?]", admin_events_path, "post" do

      assert_select "input#admin_event_name[name=?]", "admin_event[name]"

      assert_select "input#admin_event_starting_time[name=?]", "admin_event[starting_time]"

      assert_select "input#admin_event_ending_time[name=?]", "admin_event[ending_time]"

      assert_select "select#admin_event_icon_id[name=?]", "admin_event[icon_id]"
    end
  end
end
