class AddFunctionWorkExperience < ActiveRecord::Migration
  def up
    add_column :work_experiences , :job_function , :string
  end


end
