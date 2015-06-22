require 'test_helper'

class VereadoresControllerTest < ActionController::TestCase
  setup do
    @vereador = vereadores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vereadores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vereador" do
    assert_difference('Vereador.count') do
      post :create, vereador: { cargo_mesa: @vereador.cargo_mesa, descricao: @vereador.descricao, email: @vereador.email, facebook: @vereador.facebook, mesa_diretora: @vereador.mesa_diretora, nome: @vereador.nome, twitter: @vereador.twitter }
    end

    assert_redirected_to vereador_path(assigns(:vereador))
  end

  test "should show vereador" do
    get :show, id: @vereador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vereador
    assert_response :success
  end

  test "should update vereador" do
    patch :update, id: @vereador, vereador: { cargo_mesa: @vereador.cargo_mesa, descricao: @vereador.descricao, email: @vereador.email, facebook: @vereador.facebook, mesa_diretora: @vereador.mesa_diretora, nome: @vereador.nome, twitter: @vereador.twitter }
    assert_redirected_to vereador_path(assigns(:vereador))
  end

  test "should destroy vereador" do
    assert_difference('Vereador.count', -1) do
      delete :destroy, id: @vereador
    end

    assert_redirected_to vereadores_path
  end
end
