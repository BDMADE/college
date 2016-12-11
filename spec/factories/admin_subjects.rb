FactoryGirl.define do
  factory :admin_subject, class: 'Admin::Subject' do
    name "MyString"
    course nil
    semester nil
  end
end
