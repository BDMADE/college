class CreateAdminSemesters < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_semesters do |t|
      t.string :name
      t.string :short_form

      t.timestamps
    end
  end
end
