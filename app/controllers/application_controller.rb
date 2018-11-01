class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # rescue_from CanCan::AccessDenied do |exception|
  #   redirect_to root_url, :alert => 'Você não é autorizado a realizar esta ação.'
  # end
end
