class AddCourseEmployment < ActiveRecord::Migration
  def up
    add_column :employment_details, :course, :string
  end


end
