class Admin::Subject < ApplicationRecord
  belongs_to :course, :class_name=> "Admin::Course", inverse_of: :subjects
  belongs_to :semester, :class_name=>"Admin::Semester", inverse_of: :subjects
  has_many :admin_subject_forms, :class_name => 'Admin::SubjectForm',inverse_of: :subject
  accepts_nested_attributes_for :admin_subject_forms, reject_if: :all_blank, allow_destroy: true
end
