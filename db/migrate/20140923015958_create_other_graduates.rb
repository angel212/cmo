class CreateOtherGraduates < ActiveRecord::Migration
  def change
    create_table :other_graduates do |t|
      t.integer :online_application_form_id
      t.string :other_degree
      t.string :sub_other_degree

      t.timestamps
    end
  end
end
