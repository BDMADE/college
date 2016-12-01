class CreateAdminAdmissionProcesses < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_admission_processes do |t|
      t.integer :step
      t.string :name

      t.timestamps
    end
  end
end
