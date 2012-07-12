require 'test_helper'

class ImplementsControllerTest < ActionController::TestCase
  setup do
    @implement = implements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:implements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create implement" do
    assert_difference('Implement.count') do
      post :create, implement: { name: @implement.name }
    end

    assert_redirected_to implement_path(assigns(:implement))
  end

  test "should show implement" do
    get :show, id: @implement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @implement
    assert_response :success
  end

  test "should update implement" do
    put :update, id: @implement, implement: { name: @implement.name }
    assert_redirected_to implement_path(assigns(:implement))
  end

  test "should destroy implement" do
    assert_difference('Implement.count', -1) do
      delete :destroy, id: @implement
    end

    assert_redirected_to implements_path
  end
end
