class AddDetailsToAdminWebsites < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_websites, :details, :text
  end
end
