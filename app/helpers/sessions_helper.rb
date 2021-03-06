module SessionsHelper
	def sign_in(user)
		cookies.permanent[:remember_token] = user.remember_token
		self.current_user = user
	end

	def student_signed_in?
		!current_student.nil?
	end

	def instructor_signed_in?
		!current_instructor.nil?
	end

	def current_user=(user)
		@current_user = user
	end

	def current_student
    if Student.find_by_remember_token(cookies[:remember_token])
      @current_user ||= Student.find_by_remember_token(cookies[:remember_token])
    end
  end

  def current_instructor
    if Instructor.find_by_remember_token(cookies[:remember_token])
      @current_user ||= Instructor.find_by_remember_token(cookies[:remember_token])
    end
  end

  def current_user?(user)
    user == @current_user
  end

  	def sign_out
  		self.current_user = nil
  		cookies.delete(:remember_token)
  	end

  	def redirect_back_or(default)
    	redirect_to(session[:return_to] || default)
    	session.delete(:return_to)
  	end

  	def store_location
    	session[:return_to] = request.url
  	end
end
