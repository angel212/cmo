class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
    @display_filter = ''
    if params['status'] == '0' || params['status'].blank?
      temp_status_chart = OnlineApplicationForm.where('status != 90').count(:group => 'status')
      @status_chart = {}
      temp_status_chart.each_pair {|status_id, value| @status_chart.merge!(OnlineApplicationForm.get_status(status_id) => value)}
      @applicants = OnlineApplicationForm.where('status != 90').order('id DESC').order('composite_updated_at DESC')
    elsif (params['status'].present? && (params['status'].to_i % 10 == 0))
      temp_status_chart = OnlineApplicationForm.where(:status => params['status'].to_i).count(:group => 'substatus')
      @status_chart = {}
      temp_status_chart.each_pair do |status_id, value|
        status = status_id.nil? ? 'No Status' : OnlineApplicationForm.get_status(status_id)
        @status_chart.merge!(status => value)
      end
      @applicants = OnlineApplicationForm.where(status: params['status'].to_i).order('id DESC').order('composite_updated_at DESC')
    end
  end

  def excel
    @online_applications = OnlineApplicationForm.where('status != 90').order('id DESC')
  end
  def add_new_student
    @online_application = OnlineApplicationForm.create!(status: 10, :pass => 'password')
    @personal_details = PersonalDetail.create!(:email => params[:email], :dob => params[:dob] , :first_name => params[:first_name], :last_name => params[:last_name] , :gender => params[:gender] )
    @employment_detail = EmploymentDetail.create!
    @education_detail = EducationDetail.create!
    @preferences = Preference.create!

    @online_application.update_attributes!(personal_detail_id: @personal_details.id,
                                           employment_detail_id: @employment_detail.id,
                                           education_detail_id: @education_detail.id,
                                           preference_id: @preferences.id)
    redirect_to "/dashboard"  , {alert: 'profile is successfully added' .html_safe} and return
  end
end