class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :Department
      t.string :name
      t.string :short_form

      t.timestamps
    end
  end
end
