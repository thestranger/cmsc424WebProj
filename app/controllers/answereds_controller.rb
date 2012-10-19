class AnsweredsController < ApplicationController
  # GET /answereds
  # GET /answereds.json
  def index
    @answereds = Answered.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @answereds }
    end
  end

  # GET /answereds/1
  # GET /answereds/1.json
  def show
    @answered = Answered.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @answered }
    end
  end

  # GET /answereds/new
  # GET /answereds/new.json
  def new
    @answered = Answered.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @answered }
    end
  end

  # GET /answereds/1/edit
  def edit
    @answered = Answered.find(params[:id])
  end

  # POST /answereds
  # POST /answereds.json
  def create
    @answered = Answered.new(params[:answered])

    respond_to do |format|
      if @answered.save
        format.html { redirect_to @answered, notice: 'Answered was successfully created.' }
        format.json { render json: @answered, status: :created, location: @answered }
      else
        format.html { render action: "new" }
        format.json { render json: @answered.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /answereds/1
  # PUT /answereds/1.json
  def update
    @answered = Answered.find(params[:id])

    respond_to do |format|
      if @answered.update_attributes(params[:answered])
        format.html { redirect_to @answered, notice: 'Answered was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @answered.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answereds/1
  # DELETE /answereds/1.json
  def destroy
    @answered = Answered.find(params[:id])
    @answered.destroy

    respond_to do |format|
      format.html { redirect_to answereds_url }
      format.json { head :no_content }
    end
  end
end
