class Admin::AdmissionProcess < ApplicationRecord
  has_many :admin_admission_process_images, :class_name => 'Admin::AdmissionProcessImage', inverse_of: :admission_process, dependent: :delete_all
  accepts_nested_attributes_for :admin_admission_process_images, reject_if: :all_blank, allow_destroy: true
  validates_presence_of :step
  validates_uniqueness_of :step
  validates_presence_of :name
  validates_uniqueness_of :name
end
