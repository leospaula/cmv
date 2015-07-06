require 'test_helper'

class LegislacoesControllerTest < ActionController::TestCase
  setup do
    @legislacao = legislacoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:legislacoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create legislacao" do
    assert_difference('Legislacao.count') do
      post :create, legislacao: { ano: @legislacao.ano, autoria: @legislacao.autoria, classificacao: @legislacao.classificacao, ementa: @legislacao.ementa, numero: @legislacao.numero, situacao: @legislacao.situacao, tipo: @legislacao.tipo }
    end

    assert_redirected_to legislacao_path(assigns(:legislacao))
  end

  test "should show legislacao" do
    get :show, id: @legislacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @legislacao
    assert_response :success
  end

  test "should update legislacao" do
    patch :update, id: @legislacao, legislacao: { ano: @legislacao.ano, autoria: @legislacao.autoria, classificacao: @legislacao.classificacao, ementa: @legislacao.ementa, numero: @legislacao.numero, situacao: @legislacao.situacao, tipo: @legislacao.tipo }
    assert_redirected_to legislacao_path(assigns(:legislacao))
  end

  test "should destroy legislacao" do
    assert_difference('Legislacao.count', -1) do
      delete :destroy, id: @legislacao
    end

    assert_redirected_to legislacoes_path
  end
end
