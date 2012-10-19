class AssignedsController < ApplicationController
  # GET /assigneds
  # GET /assigneds.json
  def index
    @assigneds = Assigned.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @assigneds }
    end
  end

  # GET /assigneds/1
  # GET /assigneds/1.json
  def show
    @assigned = Assigned.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @assigned }
    end
  end

  # GET /assigneds/new
  # GET /assigneds/new.json
  def new
    @assigned = Assigned.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @assigned }
    end
  end

  # GET /assigneds/1/edit
  def edit
    @assigned = Assigned.find(params[:id])
  end

  # POST /assigneds
  # POST /assigneds.json
  def create
    @assigned = Assigned.new(params[:assigned])

    respond_to do |format|
      if @assigned.save
        format.html { redirect_to @assigned, notice: 'Assigned was successfully created.' }
        format.json { render json: @assigned, status: :created, location: @assigned }
      else
        format.html { render action: "new" }
        format.json { render json: @assigned.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /assigneds/1
  # PUT /assigneds/1.json
  def update
    @assigned = Assigned.find(params[:id])

    respond_to do |format|
      if @assigned.update_attributes(params[:assigned])
        format.html { redirect_to @assigned, notice: 'Assigned was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @assigned.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assigneds/1
  # DELETE /assigneds/1.json
  def destroy
    @assigned = Assigned.find(params[:id])
    @assigned.destroy

    respond_to do |format|
      format.html { redirect_to assigneds_url }
      format.json { head :no_content }
    end
  end
end
