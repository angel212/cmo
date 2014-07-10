class AddColumnPreferenceId < ActiveRecord::Migration
  def up

    add_column :online_application_forms , :preference_id , :string

  end


end
