class Admin::NoticeForm < ApplicationRecord
  belongs_to :notice_board, class_name: 'Admin::NoticeBoard', inverse_of: :admin_notice_forms
  validates :description, :background_color, presence: true
end

