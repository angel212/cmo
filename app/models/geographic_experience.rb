class GeographicExperience < ActiveRecord::Base
  attr_accessible :continent, :country, :online_application_form_id
  belongs_to :online_application_form

end
