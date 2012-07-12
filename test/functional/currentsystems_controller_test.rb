require 'test_helper'

class CurrentsystemsControllerTest < ActionController::TestCase
  setup do
    @currentsystem = currentsystems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:currentsystems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create currentsystem" do
    assert_difference('Currentsystem.count') do
      post :create, currentsystem: { name: @currentsystem.name }
    end

    assert_redirected_to currentsystem_path(assigns(:currentsystem))
  end

  test "should show currentsystem" do
    get :show, id: @currentsystem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @currentsystem
    assert_response :success
  end

  test "should update currentsystem" do
    put :update, id: @currentsystem, currentsystem: { name: @currentsystem.name }
    assert_redirected_to currentsystem_path(assigns(:currentsystem))
  end

  test "should destroy currentsystem" do
    assert_difference('Currentsystem.count', -1) do
      delete :destroy, id: @currentsystem
    end

    assert_redirected_to currentsystems_path
  end
end
