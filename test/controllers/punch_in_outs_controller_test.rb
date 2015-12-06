require 'test_helper'

class PunchInOutsControllerTest < ActionController::TestCase
  setup do
    @punch_in_out = punch_in_outs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:punch_in_outs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create punch_in_out" do
    assert_difference('PunchInOut.count') do
      post :create, punch_in_out: { check_in: @punch_in_out.check_in, check_out: @punch_in_out.check_out, user_id: @punch_in_out.user_id }
    end

    assert_redirected_to punch_in_out_path(assigns(:punch_in_out))
  end

  test "should show punch_in_out" do
    get :show, id: @punch_in_out
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @punch_in_out
    assert_response :success
  end

  test "should update punch_in_out" do
    patch :update, id: @punch_in_out, punch_in_out: { check_in: @punch_in_out.check_in, check_out: @punch_in_out.check_out, user_id: @punch_in_out.user_id }
    assert_redirected_to punch_in_out_path(assigns(:punch_in_out))
  end

  test "should destroy punch_in_out" do
    assert_difference('PunchInOut.count', -1) do
      delete :destroy, id: @punch_in_out
    end

    assert_redirected_to punch_in_outs_path
  end
end
