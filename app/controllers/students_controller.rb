class StudentsController < ApplicationController
  before_filter(:signed_in_student, only: [:edit, :update])
  before_filter(:correct_student, only: [:edit, :update])
  
  def index
  	@student = Student.paginate(page: params[:page])
  end

  def show
	@student = Student.find(params[:id])
  end

  def new
  	@student = Student.new
  end

  def edit
  	@student = Student.find(params[:id])
  end

  def update
  	@student = Student.find(params[:id])
  	if @student.update_attributes(params[:student])
      flash[:success] = "Profile updated"
      sign_in @student
      redirect_to @student
    else
      render 'edit'
    end
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

  private
  	def signed_in_student
  		unless student_signed_in?
	  		store_location
      		redirect_to studentsignin_url, notice: "Please sign in."
    	end
    end

    def correct_student
    	@student = Student.find(params[:id])
    	redirect_to(root_path, notice: "You don't have permission to do that") unless current_user?(@student)
    end
end
