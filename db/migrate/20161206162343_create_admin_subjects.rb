class CreateAdminSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_subjects do |t|
      t.belongs_to :course, foreign_key: true
      t.belongs_to :semester, foreign_key: true

      t.timestamps
    end
  end
end
