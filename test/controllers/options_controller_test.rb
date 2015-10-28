require 'test_helper'

class OptionsControllerTest < ActionController::TestCase
  setup do
    @option = options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:options)
  end

  test "should create option" do
    assert_difference('Option.count') do
      post :create, option: { collection_id: @option.collection_id, title: @option.title }
    end

    assert_response 201
  end

  test "should show option" do
    get :show, id: @option
    assert_response :success
  end

  test "should update option" do
    put :update, id: @option, option: { collection_id: @option.collection_id, title: @option.title }
    assert_response 204
  end

  test "should destroy option" do
    assert_difference('Option.count', -1) do
      delete :destroy, id: @option
    end

    assert_response 204
  end
end
