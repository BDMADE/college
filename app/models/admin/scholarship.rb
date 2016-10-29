class Admin::Scholarship < ApplicationRecord
  belongs_to :group, :class_name=> 'Admin::ScholarshipGroup', inverse_of: 'admin_scholarships'
end
