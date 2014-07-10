class AddFieldsEducationForCmo < ActiveRecord::Migration
  def up
    add_column :education_details, :scholarship, :string
    add_column :education_details, :class_year, :string
    add_column :education_details, :affiliation, :string
    add_column :education_details, :other_degree, :string
    add_column :education_details, :mba_school, :string
    add_column :education_details, :certification, :string
    add_column :education_details, :undergrad_major, :string
    add_column :education_details, :language, :string
  end


end
