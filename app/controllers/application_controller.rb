class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :topics_bar

  
  private
  def topics_bar
  	@topics = Topic.all
  end
end
