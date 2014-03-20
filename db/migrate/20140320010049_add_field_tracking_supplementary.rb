class AddFieldTrackingSupplementary < ActiveRecord::Migration
  def up
    add_column :personal_details, :track0, :string
    add_column :personal_details, :track1, :string
    add_column :personal_details, :track2, :string
    add_column :personal_details, :track3, :string
    add_column :personal_details, :track4, :string
  end


end
