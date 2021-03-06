# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121129101250) do

  create_table "answereds", :force => true do |t|
    t.string   "student_id"
    t.text     "question"
    t.string   "given_answer"
    t.boolean  "correct"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "assigneds", :force => true do |t|
    t.string   "student_id"
    t.string   "course_id"
    t.integer  "assignment_id"
    t.decimal  "score"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "assignments", :force => true do |t|
    t.string   "course_id"
    t.integer  "assignment_id"
    t.date     "due_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "contains", :force => true do |t|
    t.integer  "question_id"
    t.integer  "assignment_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "courseids", :force => true do |t|
    t.string   "department"
    t.integer  "course_number"
    t.string   "semester"
    t.integer  "year"
    t.string   "section"
    t.string   "course_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "courseids", ["course_id"], :name => "index_courseids_on_course_id"

  create_table "courses", :force => true do |t|
    t.string   "course_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "courses", ["course_id"], :name => "index_courses_on_course_id"

  create_table "enrolleds", :force => true do |t|
    t.string   "student_id"
    t.string   "course_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "enrolleds", ["student_id"], :name => "index_enrolleds_on_student_id"

  create_table "hints", :force => true do |t|
    t.text     "question"
    t.text     "hint"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "instructors", :force => true do |t|
    t.string   "ssn"
    t.string   "name"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "email"
    t.string   "remember_token"
  end

  add_index "instructors", ["remember_token"], :name => "index_instructors_on_remember_token"

  create_table "options", :force => true do |t|
    t.text     "question"
    t.text     "option"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "professors", :force => true do |t|
    t.string   "instructor_ssn"
    t.string   "course_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "questions", :force => true do |t|
    t.text     "question"
    t.string   "correct_answer"
    t.string   "question_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "student_id"
    t.string   "name"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "email"
    t.string   "remember_token"
  end

  add_index "students", ["remember_token"], :name => "index_students_on_remember_token"
  add_index "students", ["student_id"], :name => "index_students_on_student_id", :unique => true

  create_table "submissions", :force => true do |t|
    t.integer  "student_id"
    t.integer  "assignment_id"
    t.float    "score"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "submissions", ["student_id", "assignment_id"], :name => "index_submissions_on_student_id_and_assignment_id"

  create_table "submitted_answers", :force => true do |t|
    t.integer  "question_id"
    t.integer  "submission_id"
    t.text     "given_answer"
    t.float    "points"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "submitted_answers", ["submission_id"], :name => "index_submitted_answers_on_submission_id"

  create_table "ta", :force => true do |t|
    t.string   "instructor_ssn"
    t.string   "course_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "teaches", :force => true do |t|
    t.integer  "instructor_id"
    t.string   "course_id"
    t.boolean  "isprofessor"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
