class SubtopicsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]

	def new
		@subtopic = Subtopic.new
	end

	def create
		@subtopic = Subtopic.new(subtopic_params)
		if @subtopic.save
			redirect_to root_path
		else
			redirect_to new_subtopic_path
		end
	end

	def show
		@subtopic = Subtopic.find(params[:id])
	end

	def edit
		@subtopic = Subtopic.find(params[:id])
	end

	def update
		subtopic = Subtopic.find(params[:id])
		if subtopic.update(subtopic_params)
			redirect_to subtopic_path(subtopic)
		else
			redirect_to edit_subtopic_path(subtopic)
		end
	end

	def destroy
		@subtopic = Subtopic.find(params[:id])
		@subtopic.delete
		redirect_to root_path
	end

	private
	def subtopic_params
		params.require(:subtopic).permit(:name, :text, :topic_id)
	end
end
