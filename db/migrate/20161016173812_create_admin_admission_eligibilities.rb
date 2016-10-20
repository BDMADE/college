class CreateAdminAdmissionEligibilities < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_admission_eligibilities do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
