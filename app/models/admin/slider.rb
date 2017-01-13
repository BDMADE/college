class Admin::Slider < ApplicationRecord
  has_attached_file :image, styles: { large:'1024x430>',medium: '300x300>', thumb: '100x100>' }, default_url: '/assets/rails.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_presence_of :name
  validates_uniqueness_of :name
end
