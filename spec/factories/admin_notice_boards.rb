FactoryGirl.define do
  factory :admin_notice_board, class: 'Admin::NoticeBoard' do
    name "MyString"
    notice_type "MyString"
    semester nil
    department nil
  end
end
