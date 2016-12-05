class CreateAdminAdmissionProcessImages < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_admission_process_images do |t|
      t.references :admission_process, foreign_key: true,
                   index: {name: :admission_process_image}

      t.timestamps
    end
  end
end
