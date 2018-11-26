class SubArticlesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
	load_and_authorize_resource

	def new
		@sub_article = SubArticle.new
	end

	def create
		@sub_article = SubArticle.new(sub_article_params)
		@sub_article.users_id = current_user.id
		if @sub_article.save
			OperationLog.create(user_id: current_user.id, sub_article_id: @sub_article.id, operation: 'create')
			redirect_to sub_article_path(@sub_article)
		else
			redirect_to new_sub_article_path(@sub_article.article_id)
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
		if article.update(sub_article_params)
			OperationLog.create(user_id: current_user.id, sub_article_id: sub_article.id, operation: 'update')
			redirect_to sub_article_path(article)
		else
			redirect_to edit_sub_article_path(article)
		end
	end

	def destroy
		@sub_article = SubArticle.find(params[:id])
		OperationLog.create(user_id: current_user.id, sub_article_id: @sub_article.id, operation: 'delete')
		@sub_article.delete
		redirect_to root_path
	end

	# def search_sub_article
	# 	@subArticles = nil
	# 	@word = params[:search]

	# 	unless @word.to_s.empty?
	# 		@subArticles = SubArticle.where("text like ?", "%#{params[:search]}%") # valid results
	# 	end
	# end

	private
	def sub_article_params
		params.require(:sub_article).permit(:name, :text, :description, :article_id)
	end
end
