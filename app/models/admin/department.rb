class Admin::Department < ApplicationRecord
  validates :name, :short_form, presence: true
  validates :name, :short_form, uniqueness: true
  has_many :admin_notice_boards, :class_name => 'Admin::NoticeBoard'
  has_many :admin_testimonials, :class_name => 'Admin::Testimonial' , inverse_of: :department
end
