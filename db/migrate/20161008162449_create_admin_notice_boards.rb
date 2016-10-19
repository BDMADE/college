class CreateAdminNoticeBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_notice_boards do |t|
      t.string :name
      t.string :notice_type
      t.references :semester, foreign_key: true
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
