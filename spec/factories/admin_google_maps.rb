FactoryGirl.define do
  factory :admin_google_map, class: 'Admin::GoogleMap' do
    name "MyString"
    latitude "MyString"
    longitude "MyString"
    google_api_key "MyString"
  end
end
