class CreateIndustryExperiences < ActiveRecord::Migration
  def change
    create_table :industry_experiences do |t|
      t.integer :online_application_form_id
      t.string :industry
      t.string :sub_industry

      t.timestamps
    end
  end
end
