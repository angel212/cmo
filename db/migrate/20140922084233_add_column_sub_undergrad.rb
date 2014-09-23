class AddColumnSubUndergrad < ActiveRecord::Migration
  def up
    add_column :undergraduate_majors , :sub_undergrad, :sting
  end

end
