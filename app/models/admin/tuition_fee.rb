class Admin::TuitionFee < ApplicationRecord

  belongs_to :group, :class_name => Admin::TuitionFeesGroup
  validates_presence_of :name
  validates_presence_of :payable
end
