class User < ActiveRecord::Base

	validates :username, :length => { :in => 3..140, 
		:message => "Username must be 3 or more characters" }
	validates :username, :format => { :with => /\A[A-z]+\Z/,
		:message => "Username can only contain letters a-z" }

	has_many(:meetings,:ratings)

	has_secure_password()

	def self.authenticate(email,password)
		#find user
		user = User.find_by_email(email)

		#check password
		return false unless user
			
		user.authenticate(password)
	end

end
