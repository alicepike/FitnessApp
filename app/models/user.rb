class User < ActiveRecord::Base

	validates :username, :length => { :in => 3..140 }

end
