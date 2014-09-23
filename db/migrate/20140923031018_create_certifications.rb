class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
      t.integer :online_application_form_id
      t.string :certification
      t.string :other

      t.timestamps
    end
  end
end
