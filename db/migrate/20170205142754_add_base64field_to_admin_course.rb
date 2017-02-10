class AddBase64fieldToAdminCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_courses, :base64_image, :string
  end
end
