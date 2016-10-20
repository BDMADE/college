class CreateAdminTuitionFees < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_tuition_fees do |t|
      t.string :name
      t.integer :payable
      t.belongs_to :group, foreign_key: true

      t.timestamps
    end
  end
end
