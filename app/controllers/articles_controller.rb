class ArticlesController < ApplicationController
	#GET /articles
	def index
		@articles =	Article.all
	end
	#GET /articles/:id
	def show
		@article = Article.find(params[:id])
	end

	#Get /articles/new

	def new
		@article = Article.new
	end

	#POST /articles
	def create
		@article = Article.new( title: params[:article][:title],
								body: params[:article][:body],
								location: params[:article][:location])
		if @article.save
			#Creamos el usuario
			@user = User.from_omniauth(request.env["omniauth.auth"])

			# Llamamos al   ActionMailer que creamos
			ActionCorreoMailer.welcome_email(@user).deliver
			redirect_to @article
		else
			render :new
		end
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		if @article.update(title: params[:article][:title],
							body: params[:article][:body],
							location: params[:article][:location])
			redirect_to @article
		else
			render :edit
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to articles_path
	end

end