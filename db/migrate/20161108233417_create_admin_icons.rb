class CreateAdminIcons < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_icons do |t|
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end
