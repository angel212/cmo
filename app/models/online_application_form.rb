class OnlineApplicationForm < ActiveRecord::Base
  attr_accessible :composite_updated_at, :education_detail_id, :employment_detail_id, :personal_detail_id, :supporting_document_id, :user_id, :status
  belongs_to :personal_detail
  belongs_to :employment_detail
  belongs_to :education_detail
  belongs_to :supplemental_detail
  has_many :requirements

  DTL_STATUS = {10 => 'prospect', 20 => 'applicant', 30 => 'candidate', 40 => 'accepted', 50 => 'confirmed', 60 => 'enrolled', 90 => 'Deleted'}
  DTL_SUBSTATUS = {10 => {11 => 'hot lead', 12 => 'cold lead', 13 => 'withdraw'},
               20 => {21 => 'current_applicant', 22 => 'deferred', 23 => 'withdraw', 24 => 'work and reapply'},
               30 => {31 => 'for evaluation', 32 => 'for interview', 33 => 'withdraw', 34 => 'deferred', 35 => 'conditional', 36 => 'work and reinterview', 37 => 'rejected'},
               40 => {41 => 'currently accepted', 42 => 'previously accepted', 43 => 'deferred', 44 => 'withdraw'},
               50 => {51 => 'currently confirmed', 51 => 'previously accepted', 52 => 'deferred', 53 => 'withdraw'},
               60 => {61 => 'currently enrolled', 62 => 'leave of absence', 63 => 'failed', 64 => 'withdrawn', 65 => 'deferred', 66 => 'returnee'},
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
