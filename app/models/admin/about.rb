class Admin::About < ApplicationRecord
  has_attached_file :image, styles: {large: '600x600>', medium: '300x300>', thumb: '100x100>'}, default_url: '/assets/rails.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/  
  validates :slug, :description, presence: true
  validates :slug, uniqueness: true  
end
