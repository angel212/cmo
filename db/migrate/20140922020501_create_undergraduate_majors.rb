class CreateUndergraduateMajors < ActiveRecord::Migration
  def change
    create_table :undergraduate_majors do |t|
      t.integer :online_application_form_id
      t.string :undergrad

      t.timestamps
    end
  end
end
