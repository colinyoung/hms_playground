require 'test_helper'

class WorkplacesControllerTest < ActionController::TestCase
  setup do
    @workplace = workplaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workplaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workplace" do
    assert_difference('Workplace.count') do
      post :create, :workplace => @workplace.attributes
    end

    assert_redirected_to workplace_path(assigns(:workplace))
  end

  test "should show workplace" do
    get :show, :id => @workplace.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @workplace.to_param
    assert_response :success
  end

  test "should update workplace" do
    put :update, :id => @workplace.to_param, :workplace => @workplace.attributes
    assert_redirected_to workplace_path(assigns(:workplace))
  end

  test "should destroy workplace" do
    assert_difference('Workplace.count', -1) do
      delete :destroy, :id => @workplace.to_param
    end

    assert_redirected_to workplaces_path
  end
end
