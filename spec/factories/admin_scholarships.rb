FactoryGirl.define do
  factory :admin_scholarship, class: 'Admin::Scholarship' do
    name "MyString"
    discount 1
    condition "MyString"
    details "MyText"
    group nil
  end
end
