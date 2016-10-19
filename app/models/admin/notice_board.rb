class Admin::NoticeBoard < ApplicationRecord
  belongs_to :semester, :class_name => 'Admin::Semester'
  belongs_to :department, :class_name => 'Admin::Department'
  has_many :admin_notice_forms, :class_name => 'Admin::NoticeForm', inverse_of: :notice_board
  accepts_nested_attributes_for :admin_notice_forms, reject_if: :all_blank, allow_destroy: true
  validates :name, :notice_type, presence: true
  validates :name, uniqueness: true
end
