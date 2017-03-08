class ActionCorreoMailer < ApplicationMailer
	default from: 'notifications@example.com'

	def welcome_email(user)
		@user = user
		@url = 'http://localhost:3000'
		mail(to: @user.email, subject: 'welcome to my awesome Page')
	end
	
end
