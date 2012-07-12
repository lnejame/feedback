require 'test_helper'

class SystemPreferencesControllerTest < ActionController::TestCase
  setup do
    @system_preference = system_preferences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:system_preferences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create system_preference" do
    assert_difference('SystemPreference.count') do
      post :create, system_preference: { name: @system_preference.name }
    end

    assert_redirected_to system_preference_path(assigns(:system_preference))
  end

  test "should show system_preference" do
    get :show, id: @system_preference
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @system_preference
    assert_response :success
  end

  test "should update system_preference" do
    put :update, id: @system_preference, system_preference: { name: @system_preference.name }
    assert_redirected_to system_preference_path(assigns(:system_preference))
  end

  test "should destroy system_preference" do
    assert_difference('SystemPreference.count', -1) do
      delete :destroy, id: @system_preference
    end

    assert_redirected_to system_preferences_path
  end
end
