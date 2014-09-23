class OtherGraduate < ActiveRecord::Base
  attr_accessible :online_application_form_id, :other_degree, :sub_other_degree
  belongs_to :online_application_form
end
