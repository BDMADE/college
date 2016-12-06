class Admin::AdmissionProcessImage < ApplicationRecord
  belongs_to :admission_process, class_name: 'Admin::AdmissionProcess', inverse_of: :admin_admission_process_images
  has_attached_file :image, styles: { large:'600x600>',medium: '300x300>', thumb: '100x100>' }, default_url: '/assets/rails.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  has_many :admin_admission_process_image_details, :class_name => 'Admin::AdmissionProcessImageDetail', inverse_of: :admission_process_image, dependent: :destroy
  accepts_nested_attributes_for :admin_admission_process_image_details, reject_if: :all_blank, allow_destroy: true
end
