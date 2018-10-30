class FoldersController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]

	def index
		@folders = Folder.all
	end

	def new
		@folder = Folder.new
	end

	def create
		@folder = Folder.new(folder_params)
		if @folder.save
			redirect_to folders_path
		else
			redirect_to new_folder_path
		end
	end

	def show
		@folder = Folder.find(params[:id])
	end

	def edit
		@folder = Folder.find(params[:id])
	end

	def update
		folder = Folder.find(params[:id])
		if folder.update(folder_params)
			redirect_to root_path
		else
			redirect_to edit_folder_path(folder)
		end
	end

	def destroy
		@folder = Folder.find(params[:id])
		@folder.destroy
		redirect_to root_path
	end

	private
	def folder_params
		params.require(:folder).permit(:name, :description)
	end
end
