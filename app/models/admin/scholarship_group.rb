class Admin::ScholarshipGroup < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name
<<<<<<< HEAD
=======

  #has_many :admin_scholarships, :class_name => 'Admin::Scholarship',inverse_of: :admin_scholarship_group

>>>>>>> master
  has_many :scholarships, :class_name => 'Admin::Scholarship',inverse_of: :group, foreign_key: 'group_id'

end
