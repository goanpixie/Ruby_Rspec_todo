class Home < ActiveRecord::Base
	validates :user_name, :presence => true
	validates :user_name, :uniqueness =>true
	validates :pet_name, :presence => true
	validates :pet_name, :uniqueness =>true
	validates :user_age, :presence => true
	validates :pet_age, :presence => true

end
