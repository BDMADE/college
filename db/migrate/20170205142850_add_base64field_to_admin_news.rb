class AddBase64fieldToAdminNews < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_news, :base64_large_image, :string
    add_column :admin_news, :base64_thumb_image, :string
  end
end
