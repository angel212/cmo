class CreateClubAffiliations < ActiveRecord::Migration
  def change
    create_table :club_affiliations do |t|
      t.integer :online_application_form_id
      t.string :affiliation
      t.string :others

      t.timestamps
    end
  end
end
