class AddAttachmentImageToAdminSliders < ActiveRecord::Migration
  def self.up
    change_table :admin_sliders do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :admin_sliders, :image
  end
end
