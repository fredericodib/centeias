class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  def index
    @requests = Request.all
  end

  def show
    @user = User.find_by(id: @request.users_id)
    @article = Article.find_by(id: @request.articles_id)
    @sub_article = SubArticle.find_by(id: @request.sub_articles_id)
  end

  def new
    @request = Request.new
  end

  def edit
  end

  def create
    request = params[:request]
    articles_id = request[:articles_id]
    sub_articles_id = request[:sub_articles_id]

    if articles_id == 0 and sub_articles_id == 0
			redirect_to folders_path()
    end

    @request = Request.new(request_params)
    @request.users_id = current_user.id
    @request.articles_id = articles_id
    @request.sub_articles_id = sub_articles_id

    if @request.save
      if @request.articles_id
        redirect_to article_path(articles_id)
      elsif @request.sub_articles_id
        redirect_to sub_article_path(sub_articles_id)
      end
    else
			redirect_to new_request_path(articles_id, sub_articles_id)
		end
  end

  def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_request
      @request = Request.find(params[:id])
    end

    def request_params
      params.require(:request).permit(:done, :message)
    end
end
