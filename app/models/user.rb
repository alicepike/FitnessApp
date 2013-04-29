class User < ActiveRecord::Base

	validates :username, :length => { :in => 3..140, 
		:message => "Username must be 3 or more characters" }
	validates :username, :format => { :with => /\A[A-z]+\Z/,
		:message => "Username can only contain letters a-z" }

	has_many(:meetings,:ratings)

end
