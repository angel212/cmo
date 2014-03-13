class AddNewColumnOrganizationName < ActiveRecord::Migration
  def up
    add_column :supplemental_details,:organization_name, :string
  end

end
