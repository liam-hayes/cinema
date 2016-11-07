class SessionsController < ApplicationController
  skip_before_action :adminauthorise, only: [:new, :create, :destroy]

	
  def new
  end

  def create
	person = Person.find_by_email(params[:email])
	if person && person.authenticate(params[:password])
		session[:person_id] = person.id
		#redirect_to person
		redirect_to session[:return_to] || root_path
	else
		redirect_to login_path, alert: "Invalid user/password combination"
		#flash.now[:error] = "Invalid email/password combination."
		#render 'new'
	end
  end

  def destroy
	if signed_in?
		session[:person_id] = nil
	else
		flash[:notice] = "You need to log in first"
	end
	redirect_to login_path
	#session[:user_id] = nil
	#redirect_to root_path, notice: "Logged out"
  end
  
  def adminnew
	  
  end
  
  def admincreate
	  admin = Admin.find_by_emp_number(params[:emp_number])
	  if admin and admin.authenticate(params[:password])
		  session[:admin_id] = admin.id
		  redirect_to session[:return_to] || root_path
	  else
		redirect_to adminlogin_path, alert:"Invalid admin user/password confirmation"
	  end
  end
  
  def admindestroy
	  session[:admin_id] = nil
	  redirect_to root_path, notice:"Logged out"
  end
end