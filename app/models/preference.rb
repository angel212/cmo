class Preference < ActiveRecord::Base
  attr_accessible :candidate_job_status, :criteria, :industry, :job_title, :salary_after_mba
  has_one :online_application_form, :dependent => :destroy
end
