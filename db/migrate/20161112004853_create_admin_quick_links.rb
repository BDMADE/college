class CreateAdminQuickLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_quick_links do |t|
      t.string :name
      t.string :link

      t.timestamps
    end
  end
end
