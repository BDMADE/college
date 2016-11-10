class Admin::Icon < ApplicationRecord
  has_many :admin_events, class_name: 'Admin::Event',:inverse_of=>'admin_icons'
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :icon
  validates_uniqueness_of :icon
end
