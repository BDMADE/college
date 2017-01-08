class Admin::Scholarship < ApplicationRecord

  #belongs_to :group, :class_name=> 'Admin::ScholarshipGroup', inverse_of: 'admin_scholarships'
  belongs_to :group, :class_name=> 'Admin::ScholarshipGroup', inverse_of: 'scholarships'
 # belongs_to :group, :class_name=> 'Admin::ScholarshipGroup', inverse_of: 'admin_scholarships'

  belongs_to :group, :class_name=> 'Admin::ScholarshipGroup', inverse_of: 'scholarships'

  validates_presence_of :name
  validates_presence_of :condition
  validates_presence_of :details
  validates_presence_of :discount
  validates_uniqueness_of :name
end
