class Admin::TuitionFeesGroup < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :payable
  has_many :admin_tution_fees
end
