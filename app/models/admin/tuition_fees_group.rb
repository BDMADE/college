class Admin::TuitionFeesGroup < ApplicationRecord
  has_many :tuition_fees, :class_name => 'Admin::TuitionFee', inverse_of: :group, foreign_key: 'group_id'
  validates_presence_of :name
  validates_uniqueness_of :name
end
