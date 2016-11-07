class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :adminauthorise, only: [:edit, :new, :destroy, :create, :update]
  
  include ApplicationHelper
  
  def authorise
	unless signed_in?
		store_location
		redirect_to login_path :notice => "Please sign in to acccess this page"
	end
  end
  
  private
  def store_location
	session[:return_to] = request.fullpath
  end
  
  def adminauthorise
	unless adminsigned_in?
		store_location
		redirect_to adminlogin_path# :notice => "You must be logged in as an admin to complete this action"
	end
  end
end