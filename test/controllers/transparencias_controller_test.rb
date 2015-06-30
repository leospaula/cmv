require 'test_helper'

class TransparenciasControllerTest < ActionController::TestCase
  setup do
    @transparencia = transparencias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transparencias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transparencia" do
    assert_difference('Transparencia.count') do
      post :create, transparencia: { ano: @transparencia.ano, arquivo: @transparencia.arquivo, mes: @transparencia.mes, tipo: @transparencia.tipo }
    end

    assert_redirected_to transparencia_path(assigns(:transparencia))
  end

  test "should show transparencia" do
    get :show, id: @transparencia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transparencia
    assert_response :success
  end

  test "should update transparencia" do
    patch :update, id: @transparencia, transparencia: { ano: @transparencia.ano, arquivo: @transparencia.arquivo, mes: @transparencia.mes, tipo: @transparencia.tipo }
    assert_redirected_to transparencia_path(assigns(:transparencia))
  end

  test "should destroy transparencia" do
    assert_difference('Transparencia.count', -1) do
      delete :destroy, id: @transparencia
    end

    assert_redirected_to transparencias_path
  end
end
