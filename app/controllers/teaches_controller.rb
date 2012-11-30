class TeachesController < ApplicationController
  before_filter(:signed_in_instructor, only: [:new, :show_instructor])
  before_filter(:correct_instructor, only: [:show_instructor, :destroy])
  # GET /teaches
  # GET /teaches.json
  def index
    @teaches = Teach.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teaches }
    end
  end

  # GET /teaches/1
  # GET /teaches/1.json
  def show
    @teach = Teach.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @teach }
    end
  end

  def show_instructor
    @instructor = Instructor.find(params[:id])
    @teaches = Teach.find_all_by_instructor_id(@instructor.id)
    respond_to do |format|
      format.html
    end
  end

  # GET /teaches/new
  # GET /teaches/new.json
  def new
    @teach = Teach.new
    @cid = params[:course_id]
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @teach }
    end
  end

  # GET /teaches/1/edit
  def edit
    @teach = Teach.find(params[:id])
  end

  # POST /teaches
  # POST /teaches.json
  def create
    @teach = Teach.new(params[:teach])

    respond_to do |format|
      if @teach.save
        format.html { redirect_to '/instructors/'+current_instructor.id.to_s+'/courses/'+@teach.course_id, notice: 'Teacher was successfully added.' }
        format.json { render json: @teach, status: :created, location: @teach }
      else
 #       format.html { redirect_to '/instructors/'+current_instructor.id.to_s+'/courses/'+@teach.course_id+'/newinstructor'}
        format.html { render action: "new" }
        format.json { render json: @teach.errors, status: :unprocessable_entity }

        #'/instructors/'+params[:id]+'/courses/'+params[:course_id]+'/newinstructor'
      end
    end
  end

  # PUT /teaches/1
  # PUT /teaches/1.json
  def update
    @teach = Teach.find(params[:id])

    respond_to do |format|
      if @teach.update_attributes(params[:teach])
        format.html { redirect_to @teach, notice: 'Teach was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @teach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teaches/1
  # DELETE /teaches/1.json
  def destroy
    @teach = Teach.find(params[:id])
    @teach.destroy

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
