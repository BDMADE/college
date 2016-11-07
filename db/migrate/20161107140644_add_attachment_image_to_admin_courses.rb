class AddAttachmentImageToAdminCourses < ActiveRecord::Migration
  def self.up
    change_table :admin_courses do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :admin_courses, :image
  end
end
