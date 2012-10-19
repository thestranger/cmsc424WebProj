require 'test_helper'

class CourseidsControllerTest < ActionController::TestCase
  setup do
    @courseid = courseids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courseids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create courseid" do
    assert_difference('Courseid.count') do
      post :create, courseid: { course_id: @courseid.course_id, course_number: @courseid.course_number, department: @courseid.department, section: @courseid.section, semester: @courseid.semester, year: @courseid.year }
    end

    assert_redirected_to courseid_path(assigns(:courseid))
  end

  test "should show courseid" do
    get :show, id: @courseid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @courseid
    assert_response :success
  end

  test "should update courseid" do
    put :update, id: @courseid, courseid: { course_id: @courseid.course_id, course_number: @courseid.course_number, department: @courseid.department, section: @courseid.section, semester: @courseid.semester, year: @courseid.year }
    assert_redirected_to courseid_path(assigns(:courseid))
  end

  test "should destroy courseid" do
    assert_difference('Courseid.count', -1) do
      delete :destroy, id: @courseid
    end

    assert_redirected_to courseids_path
  end
end
