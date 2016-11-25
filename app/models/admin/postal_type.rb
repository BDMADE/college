class Admin::PostalType < ApplicationRecord
  belongs_to :icon,:class_name=> "Admin::Icon", inverse_of: :admin_postal_types
  has_many :admin_postals, :class_name => 'Admin::Postal',inverse_of: :admin_postal_types
  validates_presence_of :name
  validates_presence_of :icon
  validates_uniqueness_of :name
  validates_uniqueness_of :icon
end
