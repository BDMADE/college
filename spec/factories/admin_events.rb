FactoryGirl.define do
  factory :admin_event, class: 'Admin::Event' do
    name "MyString"
    details "MyText"
    event_date "2016-11-09"
    starting_time "MyString"
    ending_time "MyString"
    place "Mystring"
    icon nil
  end
end
