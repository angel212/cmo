class LanguageAbility < ActiveRecord::Base
  attr_accessible :online_application_form_id, :level, :name
  belongs_to :online_application_form
end
