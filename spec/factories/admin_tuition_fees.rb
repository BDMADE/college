FactoryGirl.define do
  factory :admin_tuition_fee, class: 'Admin::TuitionFee' do
    name "MyString"
    payable 1
    group_id nil
  end
end
