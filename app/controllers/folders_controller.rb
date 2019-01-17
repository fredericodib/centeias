class FoldersController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
	load_and_authorize_resource
	skip_authorize_resource :only => [:index]

	def index
		@folders = Folder.all
	end

	def new
		@folder = Folder.new
	end

	def create
		@folder = Folder.new(folder_params)
		@folder.users_id = current_user.id
		if @folder.save
			# byebug
			OperationLog.create(user_id: current_user.id, folder_id: @folder.id, operation: 'create')
			redirect_to folders_path
		else
			redirect_to new_folder_path
		end
	end

	def show
		@folder = Folder.find(params[:id])
		@user = User.find_by(id: @folder.users_id)
	end

	def edit
		@folder = Folder.find(params[:id])
	end

	def update
		folder = Folder.find(params[:id])
		if folder.update(folder_params)
			OperationLog.create(user_id: current_user.id, folder_id: folder.id, operation: 'update')
			redirect_to root_path
		else
			redirect_to edit_folder_path(folder)
		end
	end

	def destroy
		@folder = Folder.find(params[:id])
		OperationLog.create(user_id: current_user.id, folder_id: @folder.id, operation: 'delete')
		@folder.destroy
		redirect_to root_path
	end

	private
	def folder_params
		params.require(:folder).permit(:name, :description, :users_id)
	end
end
