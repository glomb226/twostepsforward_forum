require 'test_helper'

class SupplychainsControllerTest < ActionController::TestCase
  setup do
    @supplychain = supplychains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supplychains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supplychain" do
    assert_difference('Supplychain.count') do
      post :create, supplychain: { complete: @supplychain.complete, title: @supplychain.title, user_id: @supplychain.user_id }
    end

    assert_redirected_to supplychain_path(assigns(:supplychain))
  end

  test "should show supplychain" do
    get :show, id: @supplychain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supplychain
    assert_response :success
  end

  test "should update supplychain" do
    patch :update, id: @supplychain, supplychain: { complete: @supplychain.complete, title: @supplychain.title, user_id: @supplychain.user_id }
    assert_redirected_to supplychain_path(assigns(:supplychain))
  end

  test "should destroy supplychain" do
    assert_difference('Supplychain.count', -1) do
      delete :destroy, id: @supplychain
    end

    assert_redirected_to supplychains_path
  end
end
