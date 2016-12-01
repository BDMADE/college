class CreateAdminAdmissionProcessImages < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_admission_process_images do |t|
      t.references :admission_process, foreign_key: true

      t.timestamps
    end
  end
end
