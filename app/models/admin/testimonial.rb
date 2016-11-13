class Admin::Testimonial < ApplicationRecord
  belongs_to :department,:class_name=>'Admin::Department', inverse_of: :admin_testimonials
  belongs_to :semester ,:class_name=>'Admin::Semester', inverse_of: :admin_testimonials
  has_attached_file :image, styles: { large:'600x600>',medium: '300x300>', thumb: '100x100>' }, default_url: '/assets/rails.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_presence_of :name
  validates_presence_of :description
  validates_uniqueness_of :name
end
