FactoryGirl.define do
  factory :admin_tuition_fee, class: 'Admin::TuitionFee' do
    name "MyString"
    payable 1
    group nil
  end
end
