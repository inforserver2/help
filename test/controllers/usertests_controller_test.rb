require 'test_helper'

class UsertestsControllerTest < ActionController::TestCase
  setup do
    @usertest = usertests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usertests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usertest" do
    assert_difference('Usertest.count') do
      post :create, usertest: { age: @usertest.age, name: @usertest.name }
    end

    assert_redirected_to usertest_path(assigns(:usertest))
  end

  test "should show usertest" do
    get :show, id: @usertest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usertest
    assert_response :success
  end

  test "should update usertest" do
    patch :update, id: @usertest, usertest: { age: @usertest.age, name: @usertest.name }
    assert_redirected_to usertest_path(assigns(:usertest))
  end

  test "should destroy usertest" do
    assert_difference('Usertest.count', -1) do
      delete :destroy, id: @usertest
    end

    assert_redirected_to usertests_path
  end
end
