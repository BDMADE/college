class Admin::Postal < ApplicationRecord
  belongs_to :type,class_name: 'Admin::PostalType',inverse_of: :admin_postals
  validates_presence_of :name
  validates_presence_of :details
  validates_uniqueness_of :name
end
