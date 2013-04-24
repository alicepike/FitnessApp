module UsersHelper
	def user_name_with_title(user)
		"<p>Newbie: ".html_safe() + user.username() + "</p>".html_safe
	end
end
