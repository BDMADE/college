class Admin::TuitionFeesGroup < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name
  has_many :adnin_tution_fees
end
