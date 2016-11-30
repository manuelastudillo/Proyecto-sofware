require 'test_helper'

class AplicacionsControllerTest < ActionController::TestCase
  setup do
    @aplicacion = aplicacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aplicacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aplicacion" do
    assert_difference('Aplicacion.count') do
      post :create, aplicacion: { descripcion: @aplicacion.descripcion, nombre: @aplicacion.nombre }
    end

    assert_redirected_to aplicacion_path(assigns(:aplicacion))
  end

  test "should show aplicacion" do
    get :show, id: @aplicacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aplicacion
    assert_response :success
  end

  test "should update aplicacion" do
    patch :update, id: @aplicacion, aplicacion: { descripcion: @aplicacion.descripcion, nombre: @aplicacion.nombre }
    assert_redirected_to aplicacion_path(assigns(:aplicacion))
  end

  test "should destroy aplicacion" do
    assert_difference('Aplicacion.count', -1) do
      delete :destroy, id: @aplicacion
    end

    assert_redirected_to aplicacions_path
  end
end
