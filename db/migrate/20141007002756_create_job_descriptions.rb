class CreateJobDescriptions < ActiveRecord::Migration
  def change
    create_table :job_descriptions do |t|
      t.integer :work_experience_id
      t.string :job_desc

      t.timestamps
    end
  end
end
