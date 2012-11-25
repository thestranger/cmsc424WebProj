class SubmittedAnswersController < ApplicationController
  # GET /submitted_answers
  # GET /submitted_answers.json
  def index
    @submitted_answers = SubmittedAnswer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @submitted_answers }
    end
  end

  # GET /submitted_answers/1
  # GET /submitted_answers/1.json
  def show
    @submitted_answer = SubmittedAnswer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @submitted_answer }
    end
  end

  # GET /submitted_answers/new
  # GET /submitted_answers/new.json
  def new
    @submitted_answer = SubmittedAnswer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @submitted_answer }
    end
  end

  # GET /submitted_answers/1/edit
  def edit
    @submitted_answer = SubmittedAnswer.find(params[:id])
  end

  # POST /submitted_answers
  # POST /submitted_answers.json
  def create
    @submitted_answer = SubmittedAnswer.new(params[:submitted_answer])

    respond_to do |format|
      if @submitted_answer.save
        format.html { redirect_to @submitted_answer, notice: 'Submitted answer was successfully created.' }
        format.json { render json: @submitted_answer, status: :created, location: @submitted_answer }
      else
        format.html { render action: "new" }
        format.json { render json: @submitted_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /submitted_answers/1
  # PUT /submitted_answers/1.json
  def update
    @submitted_answer = SubmittedAnswer.find(params[:id])

    respond_to do |format|
      if @submitted_answer.update_attributes(params[:submitted_answer])
        format.html { redirect_to @submitted_answer, notice: 'Submitted answer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @submitted_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submitted_answers/1
  # DELETE /submitted_answers/1.json
  def destroy
    @submitted_answer = SubmittedAnswer.find(params[:id])
    @submitted_answer.destroy

    respond_to do |format|
      format.html { redirect_to submitted_answers_url }
      format.json { head :no_content }
    end
  end
end
