require 'test_helper'

class TaControllerTest < ActionController::TestCase
  setup do
    @tum = ta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tum" do
    assert_difference('Ta.count') do
      post :create, tum: { course_id: @tum.course_id, instructor_ssn: @tum.instructor_ssn }
    end

    assert_redirected_to tum_path(assigns(:tum))
  end

  test "should show tum" do
    get :show, id: @tum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tum
    assert_response :success
  end

  test "should update tum" do
    put :update, id: @tum, tum: { course_id: @tum.course_id, instructor_ssn: @tum.instructor_ssn }
    assert_redirected_to tum_path(assigns(:tum))
  end

  test "should destroy tum" do
    assert_difference('Ta.count', -1) do
      delete :destroy, id: @tum
    end

    assert_redirected_to ta_index_path
  end
end
