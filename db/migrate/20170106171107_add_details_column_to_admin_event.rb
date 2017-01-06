class AddDetailsColumnToAdminEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_events, :details, :text
  end
end
