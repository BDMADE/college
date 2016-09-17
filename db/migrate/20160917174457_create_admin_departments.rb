class CreateAdminDepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_departments do |t|
      t.string :name
      t.string :short_form

      t.timestamps
    end
  end
end
