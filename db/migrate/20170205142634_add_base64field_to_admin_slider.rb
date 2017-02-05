class AddBase64fieldToAdminSlider < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_sliders, :base64_image, :string
  end
end
