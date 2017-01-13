class Admin::SubjectForm < ApplicationRecord
  belongs_to :subject, class_name: 'Admin::Subject', inverse_of: :admin_subject_forms
end
