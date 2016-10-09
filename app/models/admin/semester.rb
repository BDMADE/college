class Admin::Semester < ApplicationRecord
  validates :name, :short_form, presence: true
  validates :name, :short_form, uniqueness: true
  has_many :admin_notice_boards, :class_name => 'Admin::NoticeBoard'
end
