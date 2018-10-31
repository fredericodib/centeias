class ArticlesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		@article.users_id = current_user.id
		if @article.save
			redirect_to article_path(@article)
		else
			redirect_to new_article_path(@article.folder_id)
		end
	end

	def show
		@article = Article.find(params[:id])
		@user = User.find_by(id: @article.users_id)
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		article = Article.find(params[:id])
		if article.update(article_params)
			redirect_to article_path(article)
		else
			redirect_to edit_article_path(article)
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.delete
		redirect_to root_path
	end

	def search_article
		@articles = nil
		@word = params[:search]

		unless @word.to_s.empty?
			@articles = Article.where("text like ?", "%#{params[:search]}%") # valid results
		end
	end

	private
	def article_params
		params.require(:article).permit(:name, :text, :description, :folder_id, :users_id)
	end
end
