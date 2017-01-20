FactoryGirl.define do
  factory :admin_contact, class: 'Admin::Contact' do
    name "MyString"
    email "MyString"
    phone 1
    message "MyText"
  end
end
