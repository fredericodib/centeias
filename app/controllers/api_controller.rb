class ApiController < ApplicationController

  def access
    logs = AccessLog.all
    render json: {accesses: logs }
  end

  def operations
    logs = OperationLog.all
    render json: {operations: logs}
  end

  def users
    objs = User.all
    render json: {users: objs}
  end

  def folders
    objs = Folder.all
    render json: {users: objs}
  end

  def articles
    objs = Article.all
    render json: {users: objs}
  end

end
