require 'test_helper'

class TaikhoansControllerTest < ActionController::TestCase
  setup do
    @taikhoan = taikhoans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taikhoans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taikhoan" do
    assert_difference('Taikhoan.count') do
      post :create, taikhoan: { password: @taikhoan.password, usernam: @taikhoan.usernam }
    end

    assert_redirected_to taikhoan_path(assigns(:taikhoan))
  end

  test "should show taikhoan" do
    get :show, id: @taikhoan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taikhoan
    assert_response :success
  end

  test "should update taikhoan" do
    patch :update, id: @taikhoan, taikhoan: { password: @taikhoan.password, usernam: @taikhoan.usernam }
    assert_redirected_to taikhoan_path(assigns(:taikhoan))
  end

  test "should destroy taikhoan" do
    assert_difference('Taikhoan.count', -1) do
      delete :destroy, id: @taikhoan
    end

    assert_redirected_to taikhoans_path
  end
end
