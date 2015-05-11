require 'test_helper'

class ThongtintksControllerTest < ActionController::TestCase
  setup do
    @thongtintk = thongtintks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thongtintks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thongtintk" do
    assert_difference('Thongtintk.count') do
      post :create, thongtintk: { diachi: @thongtintk.diachi, email: @thongtintk.email, gioitinh: @thongtintk.gioitinh, hinhanh: @thongtintk.hinhanh, sdt: @thongtintk.sdt, taikhoan_id: @thongtintk.taikhoan_id, ten: @thongtintk.ten, tuoi: @thongtintk.tuoi }
    end

    assert_redirected_to thongtintk_path(assigns(:thongtintk))
  end

  test "should show thongtintk" do
    get :show, id: @thongtintk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thongtintk
    assert_response :success
  end

  test "should update thongtintk" do
    patch :update, id: @thongtintk, thongtintk: { diachi: @thongtintk.diachi, email: @thongtintk.email, gioitinh: @thongtintk.gioitinh, hinhanh: @thongtintk.hinhanh, sdt: @thongtintk.sdt, taikhoan_id: @thongtintk.taikhoan_id, ten: @thongtintk.ten, tuoi: @thongtintk.tuoi }
    assert_redirected_to thongtintk_path(assigns(:thongtintk))
  end

  test "should destroy thongtintk" do
    assert_difference('Thongtintk.count', -1) do
      delete :destroy, id: @thongtintk
    end

    assert_redirected_to thongtintks_path
  end
end
