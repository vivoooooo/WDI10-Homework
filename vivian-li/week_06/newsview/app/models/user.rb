
class User < ActiveRecord::Base
	has_secure_password
	has_many :articles

	validates :email, :presence => true, :uniqueness => true    # you must have an email, and the presence must be true 
	validates :name, :presence => true, :uniqueness => true, :length => { :minimum => 3 }   #it must be 'unique'
end
