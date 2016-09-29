class AddAttachmentImageToSliders < ActiveRecord::Migration
  def self.up
    change_table :sliders do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :sliders, :image
  end
end
