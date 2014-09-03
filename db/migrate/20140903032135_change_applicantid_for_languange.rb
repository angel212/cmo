class ChangeApplicantidForLanguange < ActiveRecord::Migration
  def up
    rename_column :language_abilities , :applicant_id , :online_application_form_id
  end


end
