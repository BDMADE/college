class CreateAdminWebsites < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_websites do |t|
      t.string :name

      t.timestamps
    end
  end
end
