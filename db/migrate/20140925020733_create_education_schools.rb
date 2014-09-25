class CreateEducationSchools < ActiveRecord::Migration
  def change
    create_table :education_schools do |t|
      t.integer :online_application_form_id
      t.string :school
      t.string :location
      t.string :month_started
      t.string :year_started
      t.string :month_ended
      t.string :year_ended
      t.string :course
      t.string :remarks

      t.timestamps
    end
  end
end
