class Admin::AdmissionFeesStatus < ApplicationRecord
  validates :name, :value, presence: true
  validates :name, uniqueness: true
end
