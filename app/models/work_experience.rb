class WorkExperience < ActiveRecord::Base
  attr_accessible :company, :industry, :location, :month_ended, :month_started, :online_application_form_id, :title, :year_ended, :year_started, :years , :job_function
  belongs_to  :online_application_form
end