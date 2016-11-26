class CreateAdminVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_videos do |t|
      t.string :name
      t.string :link
      t.string :details

      t.timestamps
    end
  end
end
