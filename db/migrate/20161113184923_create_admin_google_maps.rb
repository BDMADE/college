class CreateAdminGoogleMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_google_maps do |t|
      t.string :name
      t.string :latitude
      t.string :longitude
      t.string :google_api_key

      t.timestamps
    end
  end
end
