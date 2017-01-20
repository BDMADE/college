class CreateAdminContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_contacts do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.text :message

      t.timestamps
    end
  end
end
