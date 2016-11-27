class Admin::SocialMedium < ApplicationRecord
  belongs_to :icon,:class_name=> "Admin::Icon", inverse_of: :admin_social_media
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :icon
  validates_uniqueness_of :icon
  validates_presence_of :link
  validates_uniqueness_of :link
end
