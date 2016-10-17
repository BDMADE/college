class Admin::AdmissionEligibility < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :description

end
