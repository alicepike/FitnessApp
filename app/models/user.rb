class User < ActiveRecord::Base

	validates :username, :length => { :in => 3..140, 
		:message => "Username must be 3 or more characters" }
	validates :username, :format => { :with => /\A[A-z]+\Z/,
		:message => "Username can only contain letters a-z" }
	
	validate :password_must_contain_capital_letter_and_number, :on => :create

	def password_must_contain_capital_letter_and_number

		unless password =~ /[A-Z]/
			errors.add(:password, "Password must contain a capital letter!") 
		end

		unless password =~ /\d/
			errors.add(:password, "Password must contain a number!")
		end 
	end

	has_and_belongs_to_many(:meetings)
	has_many(:ratings)

	has_secure_password()

end
