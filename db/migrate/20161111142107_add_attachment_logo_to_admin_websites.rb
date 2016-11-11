class AddAttachmentLogoToAdminWebsites < ActiveRecord::Migration
  def self.up
    change_table :admin_websites do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :admin_websites, :logo
  end
end
