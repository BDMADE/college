class Admin::NoticeBoard < ApplicationRecord
  belongs_to :semester
  belongs_to :department
end
