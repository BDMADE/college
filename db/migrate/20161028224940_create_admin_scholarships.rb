class CreateAdminScholarships < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_scholarships do |t|
      t.string :name
      t.integer :discount
      t.string :condition
      t.text :details
      t.belongs_to :group, foreign_key: true

      t.timestamps
    end
  end
end
