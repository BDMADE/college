class Admin::AdmissionProcessImageDetail < ApplicationRecord
  belongs_to :admission_process_image, class_name: 'Admin::AdmissionProcessImage', inverse_of: :admin_admission_process_image_details
end

