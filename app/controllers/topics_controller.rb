class TopicsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
	
	def new
		@topic = Topic.new
	end

	def create
		@topic = Topic.new(topic_params)
		if @topic.save
			redirect_to topics_path
		else
			redirect_to new_topic_path
		end
	end

	def show
		@topic = Topic.find(params[:id])
	end

	def edit
		@topic = Topic.find(params[:id])
	end

	def update
		topic = Topic.find(params[:id])
		if topic.update(topic_params)
			redirect_to root_path
		else
			redirect_to edit_topic_path(topic)
		end
	end

	def destroy
		@topic = Topic.find(params[:id])
		@topic.destroy
		redirect_to root_path
	end

	private
	def topic_params
		params.require(:topic).permit(:name, :description)
	end
end
