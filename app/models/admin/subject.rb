class Admin::Subject < ApplicationRecord
  belongs_to :course, :class_name=> "Admin::Course",:inverse_of=>"admin_subjects"
  belongs_to :semester, :class_name=>"Admin::Semester",:inverse_of => "admin_subjects"
validates_presence_of :name
  validates_uniqueness_of :name
end
