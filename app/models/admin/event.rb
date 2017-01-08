class Admin::Event < ApplicationRecord
  belongs_to :icon,:class_name=>'Admin::Icon', inverse_of: 'admin_events'
  validates_presence_of :name
  validates_presence_of :place
  validates_presence_of :details
  validates_uniqueness_of :name
end
