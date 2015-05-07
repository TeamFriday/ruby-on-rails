require 'test_helper'

class UserSignupsControllerTest < ActionController::TestCase
  setup do
    @user_signup = user_signups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_signups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_signup" do
    assert_difference('UserSignup.count') do
      post :create, user_signup: { email: @user_signup.email, name: @user_signup.name, password: @user_signup.password, phone_no: @user_signup.phone_no, user_type: @user_signup.user_type }
    end

    assert_redirected_to user_signup_path(assigns(:user_signup))
  end

  test "should show user_signup" do
    get :show, id: @user_signup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_signup
    assert_response :success
  end

  test "should update user_signup" do
    patch :update, id: @user_signup, user_signup: { email: @user_signup.email, name: @user_signup.name, password: @user_signup.password, phone_no: @user_signup.phone_no, user_type: @user_signup.user_type }
    assert_redirected_to user_signup_path(assigns(:user_signup))
  end

  test "should destroy user_signup" do
    assert_difference('UserSignup.count', -1) do
      delete :destroy, id: @user_signup
    end

    assert_redirected_to user_signups_path
  end
end
