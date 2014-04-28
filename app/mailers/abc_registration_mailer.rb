class AbcRegistrationMailer < ActionMailer::Base
  default from: '2nd.abc@aim.edu'

  def registration_alert(online_application_form)
    @online_application_form = online_application_form
    mail(to: ['2nd.abc@aim.edu', 'adesagun@aim.edu', 'nmendoza@aim.edu'], subject: "Registration Received From #{@online_application_form.personal_detail.first_name} #{@online_application_form.personal_detail.last_name}")
  end
end
