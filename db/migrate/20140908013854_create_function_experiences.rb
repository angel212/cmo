class CreateFunctionExperiences < ActiveRecord::Migration
  def change
    create_table :function_experiences do |t|
      t.integer :online_application_form_id
      t.string :function
      t.string :sub_function

      t.timestamps
    end
  end
end
