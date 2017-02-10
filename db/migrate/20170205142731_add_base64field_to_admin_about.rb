class AddBase64fieldToAdminAbout < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_abouts, :base64_image, :string
  end
end
