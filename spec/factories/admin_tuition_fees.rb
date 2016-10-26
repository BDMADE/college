FactoryGirl.define do
  factory :admin_tuition_fee, class: 'Admin::TuitionFee' do
    association :admin_tuition_fees_group
    name "MyString"
    payable 1
    #group nil
  end
end
