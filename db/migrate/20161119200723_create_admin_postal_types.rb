class CreateAdminPostalTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_postal_types do |t|
      t.string :name
      t.belongs_to :icon, foreign_key: true

      t.timestamps
    end
  end
end
