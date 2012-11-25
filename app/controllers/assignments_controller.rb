class AssignmentsController < ApplicationController
  # GET /assignments
  # GET /assignments.json
  def index
    @assignments = Assignment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @assignments }
    end
  end

  # GET /assignments/1
  # GET /assignments/1.json
  def show
    @assignment = Assignment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @assignment }
    end
  end

  def show_assignment_questions
    @course = Course.find_by_course_id(params[:course_id])
    @assignment = Assignment.find(params[:assignment_id])
    @questions = Contain.find_all_by_assignment_id(params[:assignment_id])
  end

  # GET /assignments/new
  # GET /assignments/new.json
  def new
    @assignment = Assignment.new
    @course = Course.find_by_course_id(params[:course_id])

    1.times do
 #     contain = @assignment.contains.build
      question = @assignment.questions.build;
    end
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @assignment }
    end
  end

  # GET /assignments/1/edit
  def edit
    @assignment = Assignment.find(params[:id])
  end

  # POST /assignments
  # POST /assignments.json
  def create
    temp = params[:assignment]
    question_list = temp[:questions_attributes]
    temp.delete(:questions_attributes)
    @assignment = Assignment.new(temp)

    question_list.each { |x, y|
      if y[:question] != "" and y[:correct_answer] != ""
        y.delete(:_destroy)
        puts x
        puts y
        @question = Question.new(y)
        if not @question.save
          render 'new'
          return;
        end
      end
    }
    respond_to do |format|
      if @assignment.save
        question_list.each { |x, y|
          contain_hash = {};
          contain_hash[:assignment_id] = @assignment.id;
          contain_hash[:question] = y[:question];
          puts "CONTAINS"
          puts contain_hash
          @contain = Contain.new(contain_hash)
          @contain.save
        }
        format.html { redirect_to @assignment, notice: 'Assignment was successfully created.' }
        format.json { render json: @assignment, status: :created, location: @assignment }
      else
        format.html { render action: "new" }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /assignments/1
  # PUT /assignments/1.json
  def update
    @assignment = Assignment.find(params[:id])

    respond_to do |format|
      if @assignment.update_attributes(params[:assignment])
        format.html { redirect_to @assignment, notice: 'Assignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignments/1
  # DELETE /assignments/1.json
  def destroy
    @assignment = Assignment.find(params[:id])
    @assignment.destroy

    respond_to do |format|
      format.html { redirect_to assignments_url }
      format.json { head :no_content }
    end
  end
end
