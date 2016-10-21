class Admin::AdmissionFeesStatus < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :value
  validates_uniqueness_of :name
end
