class AddBadgeNamePersonalDetails < ActiveRecord::Migration
  def up

    add_column :personal_details,:badge_name, :string
  end


end
