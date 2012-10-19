require 'test_helper'

class AnsweredsControllerTest < ActionController::TestCase
  setup do
    @answered = answereds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answereds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answered" do
    assert_difference('Answered.count') do
      post :create, answered: { correct: @answered.correct, given_answer: @answered.given_answer, question: @answered.question, student_id: @answered.student_id }
    end

    assert_redirected_to answered_path(assigns(:answered))
  end

  test "should show answered" do
    get :show, id: @answered
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answered
    assert_response :success
  end

  test "should update answered" do
    put :update, id: @answered, answered: { correct: @answered.correct, given_answer: @answered.given_answer, question: @answered.question, student_id: @answered.student_id }
    assert_redirected_to answered_path(assigns(:answered))
  end

  test "should destroy answered" do
    assert_difference('Answered.count', -1) do
      delete :destroy, id: @answered
    end

    assert_redirected_to answereds_path
  end
end
