require 'test_helper'

class PdetailsControllerTest < ActionController::TestCase
  setup do
    @pdetail = pdetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pdetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pdetail" do
    assert_difference('Pdetail.count') do
      post :create, pdetail: { photo_id: @pdetail.photo_id, title: @pdetail.title }
    end

    assert_redirected_to pdetail_path(assigns(:pdetail))
  end

  test "should show pdetail" do
    get :show, id: @pdetail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pdetail
    assert_response :success
  end

  test "should update pdetail" do
    put :update, id: @pdetail, pdetail: { photo_id: @pdetail.photo_id, title: @pdetail.title }
    assert_redirected_to pdetail_path(assigns(:pdetail))
  end

  test "should destroy pdetail" do
    assert_difference('Pdetail.count', -1) do
      delete :destroy, id: @pdetail
    end

    assert_redirected_to pdetails_path
  end
end
