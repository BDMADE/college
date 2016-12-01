class AddAttachmentImageToAdminAdmissionProcessImages < ActiveRecord::Migration
  def self.up
    change_table :admin_admission_process_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :admin_admission_process_images, :image
  end
end
