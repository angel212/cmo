class CreateWorkExperiences < ActiveRecord::Migration
  def change
    create_table :work_experiences do |t|
      t.integer :online_application_form_id
      t.string :company
      t.string :title
      t.string :month_started
      t.string :year_started
      t.string :month_ended
      t.string :year_ended
      t.string :years
      t.string :industry
      t.string :location

      t.timestamps
    end
  end
end
