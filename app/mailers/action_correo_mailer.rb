class ActionCorreoMailer < ApplicationMailer
	default from: 'proyectoejetour@gmail.com'

	def welcome_email(user)
		@user = user
		@url = 'https://young-shore-56554.herokuapp.com'
		mail(to: @user.email, subject: 'Tu Publicacion Fue Exitosa')
	end
	
end
