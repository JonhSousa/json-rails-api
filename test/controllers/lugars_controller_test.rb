require 'test_helper'

class LugarsControllerTest < ActionController::TestCase
  setup do
    @lugar = lugars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lugars)
  end

  test "should create lugar" do
    assert_difference('Lugar.count') do
      post :create, lugar: { latitude: @lugar.latitude, longitude: @lugar.longitude, nome: @lugar.nome }
    end

    assert_response 201
  end

  test "should show lugar" do
    get :show, id: @lugar
    assert_response :success
  end

  test "should update lugar" do
    put :update, id: @lugar, lugar: { latitude: @lugar.latitude, longitude: @lugar.longitude, nome: @lugar.nome }
    assert_response 204
  end

  test "should destroy lugar" do
    assert_difference('Lugar.count', -1) do
      delete :destroy, id: @lugar
    end

    assert_response 204
  end
end
