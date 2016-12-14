class AddAttachmentImageToAdminMiniSliders < ActiveRecord::Migration
  def self.up
    change_table :admin_mini_sliders do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :admin_mini_sliders, :image
  end
end
