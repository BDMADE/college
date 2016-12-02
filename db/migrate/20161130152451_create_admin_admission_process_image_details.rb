class CreateAdminAdmissionProcessImageDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_admission_process_image_details do |t|
      t.references :admission_process_image, foreign_key: true
      t.text :details
      t.index :name
     # t.references :admission_process_image, foreign_key: true
      t.timestamps
    end
   # add_index :admission_process_image_details,[:name]
  end
end
