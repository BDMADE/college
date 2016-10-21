class Admin::AdmissionFeesStatus < ApplicationRecord
  validates :name, :value, presence: true
  validates :name, :value, uniqueness: true

end
