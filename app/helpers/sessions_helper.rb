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
    	@current_user ||= Student.find_by_remember_token(cookies[:remember_token])
  	end

  	def current_instructor
    	@current_user ||= Instructor.find_by_remember_token(cookies[:remember_token])
  	end

  	def sign_out
  		self.current_user = nil
  		cookies.delete(:remember_token)
  	end
end
