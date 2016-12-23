class Admin::TuitionFee < ApplicationRecord
  has_and_belongs_to_many :admin_admission_fees_statuses, :class_name => 'Admin::AdmissionFeesStatus', join_table: 'admin_admission_fees_statuses_admin_tuition_fees'
  belongs_to :group, :class_name => Admin::TuitionFeesGroup, inverse_of: 'tuition_fees'
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :payable
end
