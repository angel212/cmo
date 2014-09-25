class EducationSchool < ActiveRecord::Base
  attr_accessible :course, :location, :month_ended, :month_started, :online_application_form_id, :remarks, :school, :year_ended, :year_started
belongs_to :online_application_form
end
