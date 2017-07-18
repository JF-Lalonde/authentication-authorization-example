class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user #Makes the method available in the views

  def current_user #Makes the method available in the controllers. If this method is created in the helpers directory it will only be available in the views.
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
