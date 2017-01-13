FactoryGirl.define do
  factory :admin_subject, class: 'Admin::Subject' do
    course nil
    semester nil
  end
end
