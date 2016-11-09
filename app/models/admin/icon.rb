class Admin::Icon < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :icon
  validates_uniqueness_of :icon
end
