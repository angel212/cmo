class OnlineApplicationForm < ActiveRecord::Base
  attr_accessible :composite_updated_at, :education_detail_id, :employment_detail_id, :personal_detail_id, :preference_id, :supporting_document_id, :user_id, :status , :pass
  belongs_to :personal_detail
  belongs_to :employment_detail
  belongs_to :education_detail
  belongs_to :preference
  belongs_to :supplemental_detail
  has_many :requirements
  has_many :language_abilities
  has_many :function_experiences
  has_many :industry_experiences
  has_many :geographic_experiences
  has_many :preference_industries
has_many :preference_criteriums
  has_many :club_affiliation
  has_many :undergraduate_majors
  has_many :other_graduates
  has_many :certifications
  has_many :education_schools
  has_many :work_experiences

  DTL_STATUS = {10 => 'Pending', 20 => 'recorded', 30 => 'for verification', 40 => 'paid', 90 => 'Deleted'}
  DTL_SUBSTATUS = {10 => {11 => 'registered'},
               20 => {21 => 'recorded'},
               30 => {31 => 'for for verification'},
               40 => {41 => 'paid'},
               90 => {91 => 'deleted'}}

  def self.get_status(status = 0)
    if status == 0 || status.nil?
      'No Status'
    elsif (status % 10 == 0)
      DTL_STATUS[status]
    else
      puts status
      main_status = (status / 10 * 10)
      DTL_SUBSTATUS[main_status][status]
    end
  end
end
