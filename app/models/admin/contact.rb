class Admin::Contact < ApplicationRecord
  validates :name, :email, :phone, :message, presence: true
end
