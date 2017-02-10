class AddBase64fieldToAdminWebsite < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_websites, :base64_logo, :string
    add_column :admin_websites, :base64_favicon, :string
  end
end
