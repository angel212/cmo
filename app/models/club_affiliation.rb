class ClubAffiliation < ActiveRecord::Base
  attr_accessible :affiliation, :online_application_form_id, :others
  belongs_to :online_application_form

end
