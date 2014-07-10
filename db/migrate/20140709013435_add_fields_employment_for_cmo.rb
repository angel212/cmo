class AddFieldsEmploymentForCmo < ActiveRecord::Migration
  def up
    add_column :employment_details, :years_ofexp, :string
    add_column :employment_details, :function_exp, :string
    add_column :employment_details, :industry_exp, :string
    add_column :employment_details, :work_authorization, :string
    add_column :employment_details, :geographic_authorization, :string
    add_column :employment_details, :years_supervisor_exp, :string
    add_column :employment_details, :salary_mba, :string
    add_column :employment_details, :sabbatical, :string
    add_column :employment_details, :company_before_mba, :string
    add_column :employment_details, :company_location, :string
    add_column :employment_details, :job_title, :string
    add_column :employment_details, :degree, :string
    add_column :employment_details, :school, :string

  end


end
