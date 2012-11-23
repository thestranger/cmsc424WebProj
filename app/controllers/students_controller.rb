class StudentsController < ApplicationController
  def show
	@student = Student.find(params[:id])
  end

  def new
  	@student = Student.new
  end

  def create
  	@student = Student.new(params[:student])
    if @student.save
    	sign_in @student
    	flash[:success] = "Welcome to CourseHelper!"	
      	redirect_to @student
    else
      	render 'new'
  	end
  end
end
