class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :industry
      t.string :criteria
      t.string :job_title
      t.string :salary_after_mba
      t.string :candidate_job_status

      t.timestamps
    end
  end
end
