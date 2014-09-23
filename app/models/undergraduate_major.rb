class UndergraduateMajor < ActiveRecord::Base
  attr_accessible :online_application_form_id, :undergrad , :sub_undergrad
  belongs_to :online_application_form
end
