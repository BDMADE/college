class Admin::Video < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :link
  validates_uniqueness_of :link
  validates_presence_of :details
  validates_uniqueness_of :details
end
