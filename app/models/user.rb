class User < ActiveRecord::Base
	has_secure_password
	validates :username, uniqueness: true
	validates :password, :length => {:minimum => 5 }
	has_many :orders



end
