require 'test_helper'

class BaivietsControllerTest < ActionController::TestCase
  setup do
    @baiviet = baiviets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:baiviets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baiviet" do
    assert_difference('Baiviet.count') do
      post :create, baiviet: { noidung: @baiviet.noidung, taikhoan_id: @baiviet.taikhoan_id, tieude: @baiviet.tieude }
    end

    assert_redirected_to baiviet_path(assigns(:baiviet))
  end

  test "should show baiviet" do
    get :show, id: @baiviet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baiviet
    assert_response :success
  end

  test "should update baiviet" do
    patch :update, id: @baiviet, baiviet: { noidung: @baiviet.noidung, taikhoan_id: @baiviet.taikhoan_id, tieude: @baiviet.tieude }
    assert_redirected_to baiviet_path(assigns(:baiviet))
  end

  test "should destroy baiviet" do
    assert_difference('Baiviet.count', -1) do
      delete :destroy, id: @baiviet
    end

    assert_redirected_to baiviets_path
  end
end
