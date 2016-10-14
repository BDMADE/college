FactoryGirl.define do
  factory :admin_notice_board, class: 'Admin::NoticeBoard' do
    name 'Notice 1'
    notice_type 'Normal'
    semester 1
    department 1
  end
end
