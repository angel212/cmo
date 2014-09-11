class PreferenceIndustry < ActiveRecord::Base
  attr_accessible :industry, :online_application_form_id, :sub_industry
  belongs_to :online_application_form
end
