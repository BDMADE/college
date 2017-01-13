class CreateAdminSliders < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_sliders do |t|
      t.string :name
      t.string :caption_1
      t.string :caption_2

      t.timestamps
    end
  end
end
