class CreateAdminTestimonials < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_testimonials do |t|
      t.string :name
      t.text :description
      t.belongs_to :department, foreign_key: true
      t.belongs_to :semester, foreign_key: true

      t.timestamps
    end
  end
end
