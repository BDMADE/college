class AddAttachmentImageToAdminNews < ActiveRecord::Migration
  def self.up
    change_table :admin_news do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :admin_news, :image
  end
end
