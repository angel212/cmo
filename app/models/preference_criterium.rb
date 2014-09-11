class PreferenceCriterium < ActiveRecord::Base
  attr_accessible :criteria, :online_application_form_id
  belongs_to :online_application_form
end
