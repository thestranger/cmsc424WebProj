class TeachesController < ApplicationController
  before_filter(:signed_in_instructor, only: [:new, :show_instructor])
  before_filter(:correct_instructor, only: [:show_instructor, :destroy])

  # GET /professors
  # GET /professors.json
  def index
    @teachers = Teaches.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teachers }
    end
  end

  # GET /professors/1
  # GET /professors/1.json
  def show
    @teacher = Teaches.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @teacher }
    end
  end

def show_instructor
    @instructor = Instructor.find(params[:id])
    @teaches = Teaches.find_all_by_instructor_id(@instructor.id)
    respond_to do |format|
      format.html
    end
end

  # GET /professors/new
  # GET /professors/new.json
  def new
    @teacher = Teaches.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @teacher }
    end
  end

  # GET /professors/1/edit
  def edit
    @teacher = Teaches.find(params[:id])
  end

  # POST /professors
  # POST /professors.json
  def create
    @teacher = Teaches.new(params[:teacher])

    respond_to do |format|
      if @teacher.save
        format.html { redirect_to @teacher, notice: 'Teacher was successfully created.' }
        format.json { render json: @teacher, status: :created, location: @teacher }
      else
        format.html { render action: "new" }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /professors/1
  # PUT /professors/1.json
  def update
    @teacher = Teaches.find(params[:id])

    respond_to do |format|
      if @teacher.update_attributes(params[:teacher])
        format.html { redirect_to @teacher, notice: 'Teacher was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professors/1
  # DELETE /professors/1.json
  def destroy
    @teacher = Teaches.find(params[:id])
    @teacher.destroy

    respond_to do |format|
      format.html { redirect_to teaches_url }
      format.json { head :no_content }
    end
  end

  private 
    def signed_in_instructor
      unless instructor_signed_in?
        store_location
          redirect_to instructorsignin_url, notice: "Please sign in."
      end
    end
    def correct_instructor
      @instructor = Instructor.find(params[:id])
      redirect_to(root_path, notice: "You don't have permission to do that") unless current_user?(@instructor)
    end
end