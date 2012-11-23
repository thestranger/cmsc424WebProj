class SessionsController < ApplicationController
  def new
  end

  def create
  	student = Student.find_by_email(params[:session][:email].downcase)
  	if student && student.authenticate(params[:session][:password])
    	sign_in student
    	redirect_back_or student
 	 else
    	flash.now[:error] = 'Invalid email/password combination' # Not quite right!
      	render 'new'
 	 end
  end

  def destroy
    sign_out
    redirect_to root_url
  end

end
