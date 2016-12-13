class CreateAdminMiniSliders < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_mini_sliders do |t|
      t.string :name

      t.timestamps
    end
  end
end
