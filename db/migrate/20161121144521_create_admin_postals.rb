class CreateAdminPostals < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_postals do |t|
      t.string :name
      t.string :details
      t.belongs_to :type, foreign_key: true

      t.timestamps
    end
  end
end
