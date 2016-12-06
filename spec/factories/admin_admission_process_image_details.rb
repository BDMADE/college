FactoryGirl.define do
  factory :admin_admission_process_image_detail, class: 'Admin::AdmissionProcessImageDetail' do
    admission_process_image nil
    details "MyText"
  end
end
