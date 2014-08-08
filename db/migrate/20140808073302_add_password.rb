class AddPassword < ActiveRecord::Migration
  def up
    add_column :online_application_forms , :password, :string
  end


end
