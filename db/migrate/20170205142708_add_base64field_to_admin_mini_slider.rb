class AddBase64fieldToAdminMiniSlider < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_mini_sliders, :base64_image, :string
  end
end
