class CreateAdminAdmissionProcessImageDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_admission_process_image_details do |t|
      t.text :details
      #t.index :name
      t.references :admission_process_image, foreign_key: true,
                   index: {name: :admission_process_image_details}
      t.timestamps
    end
  end
end
