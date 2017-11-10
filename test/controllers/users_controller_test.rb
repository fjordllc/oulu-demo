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
      post users_url, params: { user: { address_1: @user.address_1, address_2: @user.address_2, email: @user.email, first_name: @user.first_name, first_name_kana: @user.first_name_kana, last_name: @user.last_name, last_name_kana: @user.last_name_kana, prefecture_code: @user.prefecture_code, tel_1: @user.tel_1, tel_2: @user.tel_2, tel_3: @user.tel_3, zip_1: @user.zip_1, zip_2: @user.zip_2, zip_3: @user.zip_3 } }
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
    patch user_url(@user), params: { user: { address_1: @user.address_1, address_2: @user.address_2, email: @user.email, first_name: @user.first_name, first_name_kana: @user.first_name_kana, last_name: @user.last_name, last_name_kana: @user.last_name_kana, prefecture_code: @user.prefecture_code, tel_1: @user.tel_1, tel_2: @user.tel_2, tel_3: @user.tel_3, zip_1: @user.zip_1, zip_2: @user.zip_2, zip_3: @user.zip_3 } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
