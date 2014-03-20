class PersonalDetail < ActiveRecord::Base
  attr_accessible :address_1, :address_2, :address_country, :address_post_code, :address_state, :cell_phone, :citizenship, :city, :civil_status, :dob, :email, :first_name, :gender, :home_phone, :last_name, :medications, :middle_name, :title ,:badge_name ,:track0 ,:track1 ,:track2 ,:track3 ,:track4
  has_one :online_application_form, :dependent => :destroy
end
