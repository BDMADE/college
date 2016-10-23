class Admin::TuitionFee < ApplicationRecord

  belongs_to :group, :class_name => Admin::AdmissionFeesStatus
  validates_presence_of  :name
  validates_presence_of :payable
end
