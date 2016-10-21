class CreateAdminTuitionFeesGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_tuition_fees_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
