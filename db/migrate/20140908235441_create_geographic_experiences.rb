class CreateGeographicExperiences < ActiveRecord::Migration
  def change
    create_table :geographic_experiences do |t|
      t.integer :online_application_form_id
      t.string :continent
      t.string :country

      t.timestamps
    end
  end
end
