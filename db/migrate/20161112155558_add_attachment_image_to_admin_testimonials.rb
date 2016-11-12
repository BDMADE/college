class AddAttachmentImageToAdminTestimonials < ActiveRecord::Migration
  def self.up
    change_table :admin_testimonials do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :admin_testimonials, :image
  end
end
