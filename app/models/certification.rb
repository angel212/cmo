class Certification < ActiveRecord::Base
  attr_accessible :certification, :online_application_form_id, :other
  belongs_to :online_application_form
end
