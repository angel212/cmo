class CreatePreferenceCriteria < ActiveRecord::Migration
  def change
    create_table :preference_criteria do |t|
      t.integer :online_application_form_id
      t.string :criteria

      t.timestamps
    end
  end
end
