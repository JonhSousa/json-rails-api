require 'test_helper'

class VotosControllerTest < ActionController::TestCase
  setup do
    @voto = votos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:votos)
  end

  test "should create voto" do
    assert_difference('Voto.count') do
      post :create, voto: { lugar_id: @voto.lugar_id }
    end

    assert_response 201
  end

  test "should show voto" do
    get :show, id: @voto
    assert_response :success
  end

  test "should update voto" do
    put :update, id: @voto, voto: { lugar_id: @voto.lugar_id }
    assert_response 204
  end

  test "should destroy voto" do
    assert_difference('Voto.count', -1) do
      delete :destroy, id: @voto
    end

    assert_response 204
  end
end
