class AdmissionsController < ApplicationController

  # The edit method will be used as all applications will be pre-generated

  def index
    @online_applications = OnlineApplicationForm.where('personal_detail_id is not null')
  end

  def edit
    if(session[:sda].blank?)
      redirect_to root_url , {alert:'Logout successfully'.html_safe} and return
    end
    if(params[:id] != session[:sda])

      @online_application = OnlineApplicationForm.find(session[:sda])
      @personal_details = @online_application.personal_detail
      @employment_detail = @online_application.employment_detail
      @education_detail = @online_application.education_detail
      @preference = @online_application.preference
      @language = @online_application.language_abilities
      @function = @online_application.function_experiences
      @industry = @online_application.industry_experiences
      @preference_industry = @online_application.preference_industries
      @affiliation= @online_application.club_affiliation
      @undergrad = @online_application.undergraduate_majors
      @other_degree = @online_application.other_graduates
      @certification = @online_application.certifications
      @educ_school = @online_application.education_schools
      @work_multiple = @online_application.work_experiences


      @student=1

      respond_to do |format|
        format.html
      end
    else
      @online_application = OnlineApplicationForm.find(params[:id])
      @personal_details = @online_application.personal_detail
      @employment_detail = @online_application.employment_detail
      @education_detail = @online_application.education_detail
      @preference = @online_application.preference
      @language = @online_application.language_abilities
      @function = @online_application.function_experiences
      @industry = @online_application.industry_experiences
      @preference_industry = @online_application.preference_industries
      @affiliation= @online_application.club_affiliation
      @undergrad = @online_application.undergraduate_majors
      @other_degree = @online_application.other_graduates
      @certification = @online_application.certifications
      @educ_school = @online_application.education_schools
      @work_multiple = @online_application.work_experiences


      @student=1

      respond_to do |format|
        format.html
      end

    end

  end

  def create
    if params[:email].blank?
      redirect_to '/', {alert: 'An e-mail address is necessary to apply online. Kindly provide you e-mail address.'} and return
    elsif params[:email].match(/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/).nil?
      redirect_to '/', {alert: 'You must provide a valid e-mail address in order to apply online. Kindly provide you e-mail address.'} and return
    end

    PersonalDetail.where(email: params[:email]).each do |x|
      if x.online_application_form.present? && x.online_application_form.status != 90 && (x.online_application_form.personal_detail.present? && x.online_application_form.employment_detail.present? && x.online_application_form.education_detail)
        @online_application = x.online_application_form
      end
    end

    begin
      #dob = DateTime.strptime(params[:dob], '%d/%m/%Y')
    rescue
      #redirect_to '/', {alert: 'Please provide a valid date of birth.'} and return
    end

    # Check the password/DOB
    # Create the application if the online application form is not present.
    if @online_application.blank?
      #@online_application = OnlineApplicationForm.create!(status: 10)
      #@personal_details = PersonalDetail.create!(:email => params[:email], :dob => '01/01/1980')
      #@employment_detail = EmploymentDetail.create!
      #@education_detail = EducationDetail.create!
      #@preferences = Preference.create!
      #
      #@online_application.update_attributes!(personal_detail_id: @personal_details.id,
      #                                       employment_detail_id: @employment_detail.id,
      #                                       education_detail_id: @education_detail.id,
      #                                       preference_id: @preferences.id)
      redirect_to '/', {alert: 'Email or Password is incorrect. <a href="mailto:icthelpdesk@aim.edu">icthelpdesk@aim.edu</a> or call +63 (2) 894 0043.'.html_safe} and return
    elsif @online_application.present? && @online_application.personal_detail.dob.nil?
      PersonalDetail.where(email: params[:email] ).each { |x| x.update_attribute :dob, dob }
    elsif @online_application.present? &&  @online_application.pass != params[:password]
      redirect_to '/', {alert: 'Incorrect Email or Password'.html_safe} and return
    end
session[:sda] =@online_application.id
   redirect_to("/admissions/#{session[:sda]}/edit") and return

  end

  def update
    begin
      @online_application = OnlineApplicationForm.find(params[:id])
      @personal_details = @online_application.personal_detail
      @employment_detail = @online_application.employment_detail
      @education_detail = @online_application.education_detail
      @preference = @online_application.preference
      @language = @online_application.language_abilities

      personal_detail = params[:personal_detail]
      employment_detail = params[:employment_detail]
      education_detail = params[:education_detail]
      preference = params[:preference]

      personal_detail.each_pair do |k, v|
        personal_detail.merge!(k => DateTime.strptime(v, '%d/%m/%Y')) rescue next
      end

      employment_detail.each_pair do |k, v|
        employment_detail.merge!(k => DateTime.strptime(v, '%d/%m/%Y')) rescue next
      end

      education_detail.each_pair do |k, v|
        education_detail.merge!(k => DateTime.strptime(v, '%d/%m/%Y')) rescue next
      end

      preference.each_pair do |k, v|
        preference.merge!(k => DateTime.strptime(v, '%d/%m/%Y')) rescue next
      end


      @online_application.update_attribute :browser, request.env['HTTP_USER_AGENT']
    rescue Exception => e
      # Add an exception hider
    end

    @supplemental_detail = SupplementalDetail.create!
    @online_application.update_attribute :supplemental_detail_id, @supplemental_detail.id
    @personal_details.update_attributes!(params[:personal_detail])
    @employment_detail.update_attributes!(params[:employment_detail])
    @education_detail.update_attributes!(params[:education_detail])
    @preference.update_attributes!(params[:preference])

    #::AbcRegistrationMailer.registration_alert(@online_application).deliver!
    #redirect_to edit_supplemental_detail_path(@supplemental_detail)
    redirect_to "/admissions/#{@online_application.id}/edit", {alert: 'profile updated successfully'.html_safe} and return
  end


  def create_language

    LanguageAbility.create!(:online_application_form_id => params[:id] , :name => params[:language_name], :level=> params[:language_level])
    redirect_to "/admissions/#{params[:id]}/edit/?page=3" , {alert: 'profile updated successfully'.html_safe} and return
  end

  def create_function

    FunctionExperience.create!(:online_application_form_id => params[:id] , :function => params[:function], :sub_function=> params[:sub_function])
    redirect_to "/admissions/#{params[:id]}/edit/?page=4" , {alert: 'profile updated successfully'.html_safe} and return
  end
  def create_industry

    IndustryExperience.create!(:online_application_form_id => params[:id] , :industry => params[:industry], :sub_industry=> params[:sub_industry])
    redirect_to "/admissions/#{params[:id]}/edit/?page=4" , {alert: 'profile updated successfully'.html_safe} and return
  end

  def create_geographic

    GeographicExperience.create!(:online_application_form_id => params[:id] , :continent => params[:continent], :country=> params[:country])
    redirect_to "/admissions/#{params[:id]}/edit/?page=4" , {alert: 'profile updated successfully'.html_safe} and return
  end

  def create_preference_industry

    PreferenceIndustry.create!(:online_application_form_id => params[:id] , :industry => params[:industry], :sub_industry=> params[:sub_industry])
    redirect_to "/admissions/#{params[:id]}/edit/?page=5" , {alert: 'profile updated successfully'.html_safe} and return
  end

  def create_preference_criteria

    PreferenceCriterium.create!(:online_application_form_id => params[:id] , :criteria => params[:criteria])
    redirect_to "/admissions/#{params[:id]}/edit/?page=5" , {alert: 'profile updated successfully'.html_safe} and return
  end

  def create_affiliation

    ClubAffiliation.create!(:online_application_form_id => params[:id] , :affiliation => params[:affiliation])
    redirect_to "/admissions/#{params[:id]}/edit/?page=3" , {alert: 'profile updated successfully'.html_safe} and return
  end
  def create_undergrad

    UndergraduateMajor.create!(:online_application_form_id => params[:id] , :undergrad => params[:undergraduate_major], :sub_undergrad => params[:subcategory22])
    redirect_to "/admissions/#{params[:id]}/edit/?page=3" , {alert: 'profile updated successfully'.html_safe} and return
  end
  def create_other_degree

    OtherGraduate.create!(:online_application_form_id => params[:id] , :other_degree => params[:other_degree], :sub_other_degree => params[:subcategory55])
    redirect_to "/admissions/#{params[:id]}/edit/?page=3" , {alert: 'profile updated successfully'.html_safe} and return
  end
  def create_certification

    Certification.create!(:online_application_form_id => params[:id] , :certification => params[:certification], :other => params[:other])
    redirect_to "/admissions/#{params[:id]}/edit/?page=3" , {alert: 'profile updated successfully'.html_safe} and return
  end

  def add_multiple_school
    EducationSchool.create!(:online_application_form_id => params[:id] , :school => params[:school], :location => params[:location] , :month_started => params[:month_started] , :year_started => params[:year_started] , :month_ended => params[:month_ended] , :year_ended => params[:year_ended] , :course => params[:course] , :remarks => params[:remarks])
    redirect_to "/admissions/#{params[:id]}/edit/?page=3" , {alert: 'profile updated successfully'.html_safe} and return

  end
  def edit_school
    @multiple_school = EducationSchool.find(params[:educ_id])
    @multiple_school.update_attributes!( :school => params[:school], :location => params[:location] , :month_started => params[:month_started] , :year_started => params[:year_started] , :month_ended => params[:month_ended] , :year_ended => params[:year_ended] , :course => params[:course] , :remarks => params[:remarks])

    redirect_to "/admissions/#{params[:id]}/edit" , {alert: 'profile updated successfully'.html_safe} and return
  end

  def add_multiple_work
    WorkExperience.create!(:online_application_form_id => params[:id] , :company => params[:company], :title => params[:title] , :month_started => params[:month_started] , :year_started => params[:year_started] , :month_ended => params[:month_ended] , :year_ended => params[:year_ended] , :years => params[:years] , :job_function => params[:function] , :industry => params[:industry] , :location => params[:location])
    redirect_to "/admissions/#{params[:id]}/edit/?page=4" , {alert: 'profile updated successfully'.html_safe} and return

  end
  def edit_multiple_work
    @multiple_work = WorkExperience.find(params[:educ_id])
    @multiple_work.update_attributes!( :company => params[:company], :location => params[:location] , :month_started => params[:month_started] , :year_started => params[:year_started] , :month_ended => params[:month_ended] , :year_ended => params[:year_ended] , :title => params[:title] , :years => params[:years] , :job_function => params[:function] ,:industry => params[:industry])

    redirect_to "/admissions/#{params[:id]}/edit" , {alert: 'profile updated successfully'.html_safe} and return
  end

  def add_job_description
    JobDescription.create!(:work_experience_id => params[:id2] ,:job_desc => params[:job_description])
    redirect_to "/admissions/#{params[:id]}/edit/?page=4" , {alert: 'profile updated successfully'.html_safe} and return

  end

  def delete_language
    language_ability = LanguageAbility.find(params[:id])
    language_ability.delete

    render :json => {'status' => 'success'}.to_json
  end
  def delete_function
    function_exp = FunctionExperience.find(params[:id])
    function_exp.delete

    render :json => {'status' => 'success'}.to_json
  end
  def delete_industry
    industry_exp = IndustryExperience.find(params[:id])
    industry_exp.delete

    render :json => {'status' => 'success'}.to_json
  end
  def delete_geographic
    geographic_exp = GeographicExperience.find(params[:id])
    geographic_exp.delete

    render :json => {'status' => 'success'}.to_json
  end
  def delete_pre_industry
    pre_industry= PreferenceIndustry.find(params[:id])
    pre_industry.delete

    render :json => {'status' => 'success'}.to_json
  end
  def delete_pre_criteria
    pre_criteria= PreferenceCriterium.find(params[:id])
    pre_criteria.delete

    render :json => {'status' => 'success'}.to_json
  end

  def delete_club_affiliation
    pre_criteria= ClubAffiliation.find(params[:id])
    pre_criteria.delete

    render :json => {'status' => 'success'}.to_json
  end

  def  delete_other_grad
    pre_criteria= OtherGraduate.find(params[:id])
    pre_criteria.delete

    render :json => {'status' => 'success'}.to_json
  end

  def  delete_certification
    pre_criteria= Certification.find(params[:id])
    pre_criteria.delete

    render :json => {'status' => 'success'}.to_json
  end


  def delete_undergrad
    pre_criteria= UndergraduateMajor.find(params[:id])
    pre_criteria.delete

    render :json => {'status' => 'success'}.to_json
  end
  def delete_work
    work_exp= WorkExperience.find(params[:id])
    work_exp.delete

    render :json => {'status' => 'success'}.to_json
  end
  def delete_school
    school_= EducationSchool.find(params[:id])
    school_.delete

    render :json => {'status' => 'success'}.to_json
  end

  def delete_job_desc
    job_desc= JobDescription.find(params[:id])
    job_desc.delete

    render :json => {'status' => 'success'}.to_json
  end
  def changeEmail
    data= OnlineApplicationForm.find(params[:id])
  if data.personal_detail.email != params[:currentEmail]
    redirect_to "/admissions/#{params[:id]}/edit" , {alert: 'Incorrect "Current Email", Data not match. Please Try Again.'.html_safe} and return
  elsif params[:newEmail] != params[:confirmEmail]
    redirect_to "/admissions/#{params[:id]}/edit" , {alert: 'New Email Does not match, Please Try Again.'.html_safe} and return
  elsif params[:newEmail].match(/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/).nil?
    redirect_to "/admissions/#{params[:id]}/edit" , {alert: 'Please provide valid Email for your new Email.'.html_safe} and return
  elsif PersonalDetail.where(email: params[:newEmail]).present?
    redirect_to "/admissions/#{params[:id]}/edit" , {alert: 'The Email you want to use for as new Email is currently used'.html_safe} and return
  else
    newEmail = data.personal_detail
    newEmail.update_attributes!(:email => params[:newEmail])
    redirect_to "/admissions/#{params[:id]}/edit" , {alert: 'Email Updated Successfully'.html_safe} and return
  end


  end

  def changePassword
    data= OnlineApplicationForm.find(params[:id])
    if data.pass != params[:CurrentPassword]
      redirect_to "/admissions/#{params[:id]}/edit" , {alert: 'Incorrect "Current Password", Data not match. Please Try Again.'.html_safe} and return
    elsif params[:newPassword] != params[:confirmPassword]
      redirect_to "/admissions/#{params[:id]}/edit" , {alert: 'New Password Does not match, Please Try Again.'.html_safe} and return

    end

    data.update_attributes(:pass => params[:newPassword])
    redirect_to "/admissions/#{params[:id]}/edit" , {alert: 'Password Updated Successfully'.html_safe} and return

  end

  def clean_params(params)

    params.each_pair do |key, value|
      params.merge!(key => DateTime.strptime(value, '%d/%m/%Y')) if key.scan('date').count > 0
    end
  end
def logout
  session[:sda]= nil
redirect_to root_url , {alert:'Logout successfully'.html_safe} and return
end

end
