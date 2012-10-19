class CourseidsController < ApplicationController
  # GET /courseids
  # GET /courseids.json
  def index
    @courseids = Courseid.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courseids }
    end
  end

  # GET /courseids/1
  # GET /courseids/1.json
  def show
    @courseid = Courseid.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @courseid }
    end
  end

  # GET /courseids/new
  # GET /courseids/new.json
  def new
    @courseid = Courseid.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @courseid }
    end
  end

  # GET /courseids/1/edit
  def edit
    @courseid = Courseid.find(params[:id])
  end

  # POST /courseids
  # POST /courseids.json
  def create
    @courseid = Courseid.new(params[:courseid])

    respond_to do |format|
      if @courseid.save
        format.html { redirect_to @courseid, notice: 'Courseid was successfully created.' }
        format.json { render json: @courseid, status: :created, location: @courseid }
      else
        format.html { render action: "new" }
        format.json { render json: @courseid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /courseids/1
  # PUT /courseids/1.json
  def update
    @courseid = Courseid.find(params[:id])

    respond_to do |format|
      if @courseid.update_attributes(params[:courseid])
        format.html { redirect_to @courseid, notice: 'Courseid was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @courseid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courseids/1
  # DELETE /courseids/1.json
  def destroy
    @courseid = Courseid.find(params[:id])
    @courseid.destroy

    respond_to do |format|
      format.html { redirect_to courseids_url }
      format.json { head :no_content }
    end
  end
end
