class Admin::AdmissionFeesStatus < ApplicationRecord
  has_and_belongs_to_many :admin_tuition_fees, :class_name => 'Admin::TuitionFee', join_table: 'admin_admission_fees_statuses_admin_tuition_fees'
  validates :name, :value, presence: true
  validates :name, uniqueness: true
end
