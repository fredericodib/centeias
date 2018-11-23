class ApiController < ApplicationController

  def access
    logs = AccessLog.all
    render json: { logs: logs }
  end

  def operations
    logs = OperationLog.all
    render json: {logs: logs}
  end

end
