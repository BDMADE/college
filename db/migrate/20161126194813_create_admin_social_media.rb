class CreateAdminSocialMedia < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_social_media do |t|
      t.string :name
      t.string :link
      t.belongs_to :icon, foreign_key: true

      t.timestamps
    end
  end
end
