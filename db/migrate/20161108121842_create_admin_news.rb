class CreateAdminNews < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_news do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
