class Admin::QuickLink < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :link
  validates_uniqueness_of :name
end
