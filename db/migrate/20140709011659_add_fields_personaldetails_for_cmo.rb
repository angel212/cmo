class AddFieldsPersonaldetailsForCmo < ActiveRecord::Migration
  def up
    add_column :personal_details, :address_3, :string
    add_column :personal_details, :current_telephone, :string
    add_column :personal_details, :current_mobile, :string
    add_column :personal_details, :home_address, :string
    add_column :personal_details, :home_city, :string
    add_column :personal_details, :home_country, :string
    add_column :personal_details, :home_postal, :string

  end


end
