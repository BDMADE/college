class CreateAdminAdmissionFeesStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_admission_fees_statuses do |t|
      t.string :name
      t.integer :value

      t.timestamps
    end
  end
end
