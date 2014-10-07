class JobDescription < ActiveRecord::Base
  attr_accessible :job_desc, :work_experience_id
  belongs_to :work_experience
end
