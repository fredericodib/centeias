class SubArticlesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]

	def new
		@sub_article = SubArticle.new
	end

	def create
		@sub_article = SubArticle.new(article_params)
		@sub_article.users_id = current_user.id
		if @sub_article.save
			redirect_to subArticle_path(@sub_article)
		else
			redirect_to new_subArticle_path(@sub_article.folder_id)
		end
	end

	def show
        @sub_article = SubArticle.find(params[:id])
        @user = User.find_by(id: @sub_article.users_id)
	end

	def edit
		@sub_article = SubArticle.find(params[:id])
	end

	def update
		article = SubArticle.find(params[:id])
		if article.update(article_params)
			redirect_to subArticle_path(article)
		else
			redirect_to edit_subArticle_path(article)
		end
	end

	def destroy
		@sub_article = SubArticle.find(params[:id])
		@sub_article.delete
		redirect_to root_path
	end

	def search_article
		@subArticles = nil
		@word = params[:search]

		unless @word.to_s.empty?
			@subArticles = SubArticle.where("text like ?", "%#{params[:search]}%") # valid results
		end
	end

	private
	def article_params
		params.require(:article).permit(:name, :text, :description, :article_id, :users_id)
	end
end
