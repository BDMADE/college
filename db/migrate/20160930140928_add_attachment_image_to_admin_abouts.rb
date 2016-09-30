class AddAttachmentImageToAdminAbouts < ActiveRecord::Migration
  def self.up
    change_table :admin_abouts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :admin_abouts, :image
  end
end
