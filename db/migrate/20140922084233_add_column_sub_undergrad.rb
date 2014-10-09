class AddColumnSubUndergrad < ActiveRecord::Migration
  def up
    add_column :undergraduate_majors , :sub_undergrad, :string
  end

end
