class Admin::TuitionFee < ApplicationRecord

  belongs_to :group, :class_name => Admin::AdmissionFeesStatus
end
