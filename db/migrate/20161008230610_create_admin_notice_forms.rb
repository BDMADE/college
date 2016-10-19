class CreateAdminNoticeForms < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_notice_forms do |t|
      t.string :description
      t.string :background_color
      t.belongs_to :notice_board, foreign_key: true

      t.timestamps
    end
  end
end
