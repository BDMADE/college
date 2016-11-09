class CreateAdminEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_events do |t|
      t.string :name
      t.string :place
      t.date :event_date
      t.string :starting_time
      t.string :ending_time
      t.belongs_to :icon, foreign_key: true

      t.timestamps
    end
  end
end
