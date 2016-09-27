class Admin::Semester < ApplicationRecord
  validates :name, :short_form, presence: true
  validates :name, :short_form, uniqueness: true
end
