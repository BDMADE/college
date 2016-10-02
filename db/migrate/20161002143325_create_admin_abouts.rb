class CreateAdminAbouts < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_abouts do |t|
      t.string :slug
      t.text :description

      t.timestamps
    end
  end
end
