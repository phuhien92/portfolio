require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = User.new(username: 'exampleuser', email: 'example@example.com', password: '123456', confirm_password: '123456')
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { confirm_password: @user.confirm_password, email: @user.email, password: @user.password, username: @user.username }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { confirm_password: @user.confirm_password, email: @user.email, password: @user.password, username: @user.username }
    assert_redirected_to user_path(assigns(:user))
  end

  test "name should be valid" do
    @user.username = ""
    assert_not @user.valid?
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
