class Admin::GoogleMap < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :latitude
  validates_presence_of :longitude
  validates_presence_of :google_api_key
  validates_uniqueness_of :name
  validates_uniqueness_of :latitude
  validates_uniqueness_of :longitude
  validates_uniqueness_of :google_api_key
end


