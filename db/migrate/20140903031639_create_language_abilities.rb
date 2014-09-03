class CreateLanguageAbilities < ActiveRecord::Migration
  def change
    create_table :language_abilities do |t|
      t.integer :applicant_id
      t.string :name
      t.string :level

      t.timestamps
    end
  end
end
