module ApplicationHelper
	def signed_in?
		if session[:person_id].nil?
			return
		else
			@current_person = Person.find_by_id(session[:person_id])
		end
	end
	
	def adminsigned_in?
		if session[:admin_id].nil?
			return
		else
			@admincurrent_user = Admin.find_by_id(session[:admin_id])
		end
	end
end