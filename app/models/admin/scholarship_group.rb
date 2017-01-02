class Admin::ScholarshipGroup < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name  
  has_many :scholarships, :class_name => 'Admin::Scholarship',inverse_of: :group, foreign_key: 'group_id'
end
