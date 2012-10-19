require 'test_helper'

class EnrolledsControllerTest < ActionController::TestCase
  setup do
    @enrolled = enrolleds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enrolleds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enrolled" do
    assert_difference('Enrolled.count') do
      post :create, enrolled: { course_id: @enrolled.course_id, student_id: @enrolled.student_id }
    end

    assert_redirected_to enrolled_path(assigns(:enrolled))
  end

  test "should show enrolled" do
    get :show, id: @enrolled
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enrolled
    assert_response :success
  end

  test "should update enrolled" do
    put :update, id: @enrolled, enrolled: { course_id: @enrolled.course_id, student_id: @enrolled.student_id }
    assert_redirected_to enrolled_path(assigns(:enrolled))
  end

  test "should destroy enrolled" do
    assert_difference('Enrolled.count', -1) do
      delete :destroy, id: @enrolled
    end

    assert_redirected_to enrolleds_path
  end
end
