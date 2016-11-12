class Admin::Website < ApplicationRecord
validates_presence_of :name
validates_uniqueness_of :name
  has_attached_file :logo, styles: { large:'600x600>',medium: '300x300>', thumb: '100x100>' }, default_url: '/assets/rails.png'
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/

  has_attached_file :favicon, styles: { large:'36x36>',medium: '24x324>', thumb: '16x16>' }, default_url: '/assets/rails.png'
  validates_attachment_content_type :favicon, content_type: /\Aimage\/.*\Z/
end
