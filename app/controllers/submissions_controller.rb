class SubmissionsController < ApplicationController
  # GET /submissions
  # GET /submissions.json
  def index
    @submissions = Submission.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @submissions }
    end
  end

  # GET /submissions/1
  # GET /submissions/1.json
  def show
    @submission = Submission.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @submission }
    end
  end

  # GET /submissions/new
  # GET /submissions/new.json
  def new
    @submission = Submission.new
  end

  # GET /submissions/1/edit
  def edit
    @submission = Submission.find(params[:id])
    @assignment = @submission.assignment
  end

  # POST /submissions
  # POST /submissions.json
  def create
    @submission = Submission.new(:student_id => current_student.id, :assignment_id => params[:assignment_id])

    respond_to do |format|
      if @submission.save
        @assignment = @submission.assignment
        @assignment.questions.each do |question| 
          answer = SubmittedAnswer.new(:submission_id => @submission.id, :question_id => question.id)
          answer.save
        end
        format.html { redirect_to edit_submission_path(@submission), notice: 'Submission was successfully created.' }
        format.json { render json: @submission, status: :created, location: @submission }
      else
        format.html { render action: "new" }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /submissions/1
  # PUT /submissions/1.json
  def update
    @submission = Submission.find(params[:id])

    respond_to do |format|
      if @submission.update_attributes(params[:submission])
        flag = true
        @submission.score = 0 
        @submission.submitted_answers.each do |answer|
          if answer.points
            @submission.score += answer.points
            flag = false
          end
        end
        if flag == true
          @submission.score=nil
        end
        @submission.save
        format.html { redirect_to @submission, notice: 'Submission was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  def grade
    @submission = Submission.find(params[:submission_id])
    if @submission.score.nil?
      @submission.submitted_answers.each do |answer|
        question = answer.question
        if question.question_type == "Multiple Choice" || (question.question_type == "Short Answer" && !question.correct_answer.nil?)
          if answer.given_answer == question.correct_answer
            answer.points = 1
          else
            answer.points = 0
          end
        end
        answer.save
      end
    end
    @assignment = @submission.assignment
  end

  def grade_all
    @submissions = Submission.find_all_by_assignment_id(params[:assignment_id])
  end


  # DELETE /submissions/1
  # DELETE /submissions/1.json
  def destroy
    @submission = Submission.find(params[:id])
    @submission.destroy

    respond_to do |format|
      format.html { redirect_to submissions_url }
      format.json { head :no_content }
    end
  end
end
