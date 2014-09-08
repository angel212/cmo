class FunctionExperience < ActiveRecord::Base
  attr_accessible :function, :online_application_form_id, :sub_function
  belongs_to :online_application_form
end
