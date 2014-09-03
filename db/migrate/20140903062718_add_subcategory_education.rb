class AddSubcategoryEducation < ActiveRecord::Migration
  def up
    add_column :education_details , :sub_other_degree , :string
    add_column :education_details  , :sub_undergrad , :string
  end


end
