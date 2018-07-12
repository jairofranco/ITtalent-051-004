require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { user_email: @user.user_email, user_localization_lat: @user.user_localization_lat, user_localization_long: @user.user_localization_long, user_name: @user.user_name, user_password: @user.user_password, user_rol: @user.user_rol } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { user_email: @user.user_email, user_localization_lat: @user.user_localization_lat, user_localization_long: @user.user_localization_long, user_name: @user.user_name, user_password: @user.user_password, user_rol: @user.user_rol } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
