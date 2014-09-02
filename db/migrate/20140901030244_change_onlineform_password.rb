class ChangeOnlineformPassword < ActiveRecord::Migration
  def up
   rename_column :online_application_forms , :password , :pass
  end


end
