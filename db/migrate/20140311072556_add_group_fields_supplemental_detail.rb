class AddGroupFieldsSupplementalDetail < ActiveRecord::Migration
  def change
    add_column :supplemental_details, :group, :string
    add_column :supplemental_details, :group_name, :string
  end
end