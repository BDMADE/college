class AddBase64fieldToAdminTestimonial < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_testimonials, :base64_image, :string
  end
end
