class EnrolledsController < ApplicationController
  before_filter(:signed_in_student, only: [:new, :show_student, :create])
  before_filter(:correct_student, only: [:show_student])

  # GET /enrolleds
  # GET /enrolleds.json
  def index
    @enrolleds = Enrolled.all
    @courses = Course.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @enrolleds }
    end
  end

  # GET /enrolleds/1
  # GET /enrolleds/1.json
  def show
    @enrolled = Enrolled.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @enrolled }
    end
  end

  def show_student
    @student = Student.find(params[:id])
    @enrolleds = Enrolled.find_all_by_student_id(@student.student_id)
    respond_to do |format|
      format.html
    end
  end

  # GET /enrolleds/new
  # GET /enrolleds/new.json
  def new
    @enrolled = Enrolled.new
  end

  # GET /enrolleds/1/edit
  def edit
    @enrolled = Enrolled.find(params[:id])
  end

  # POST /enrolleds
  # POST /enrolleds.json
  def create
    @enrolled = Enrolled.new(:student_id => current_student.student_id, :course_id => params[:course_id])

    respond_to do |format|
      if @enrolled.save
        format.html { redirect_to @enrolled, notice: 'Enrolled was successfully created.' }
        format.json { render json: @enrolled, status: :created, location: @enrolled }
      else
        format.html { render action: "new" }
        format.json { render json: @enrolled.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /enrolleds/1
  # PUT /enrolleds/1.json
  def update
    @enrolled = Enrolled.find(params[:id])

    respond_to do |format|
      if @enrolled.update_attributes(params[:enrolled])
        format.html { redirect_to @enrolled, notice: 'Enrolled was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @enrolled.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrolleds/1
  # DELETE /enrolleds/1.json
  def destroy
    @enrolled = Enrolled.find(params[:id])
    @enrolled.destroy

    respond_to do |format|
      format.html { redirect_to enrolleds_url }
      format.json { head :no_content }
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
