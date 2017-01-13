class CreateAdminSubjectForms < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_subject_forms do |t|
      t.string :name
      t.belongs_to :subject, foreign_key: true

      t.timestamps
    end
  end
end
