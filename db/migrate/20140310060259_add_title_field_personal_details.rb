class AddTitleFieldPersonalDetails < ActiveRecord::Migration
  def up
        add_column :personal_details, :title,:string
    end


end
