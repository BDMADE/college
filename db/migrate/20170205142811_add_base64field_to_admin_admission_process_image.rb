class AddBase64fieldToAdminAdmissionProcessImage < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_admission_process_images, :base64_image, :string
  end
end
