class Admin::Icon < ApplicationRecord
  has_many :admin_events, class_name: 'Admin::Event',:inverse_of=>'admin_icons'
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :icon
  validates_uniqueness_of :icon
  has_many :admin_postal_types, :class_name => 'Admin::PostalType',inverse_of: :admin_icon
  has_many :admin_social_media, :class_name=> "Admin::SocialMedium", inverse_of: :admin_icon
end
