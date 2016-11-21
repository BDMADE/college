FactoryGirl.define do
  factory :admin_postal_type, class: 'Admin::PostalType' do
    #association :icon
    name "MyString"
    icon nil
  end
end
