class AddAttachmentFaviconToAdminWebsites < ActiveRecord::Migration
  def self.up
    change_table :admin_websites do |t|
      t.attachment :favicon
    end
  end

  def self.down
    remove_attachment :admin_websites, :favicon
  end
end
