require 'test_helper'

class TratamientosControllerTest < ActionController::TestCase
  setup do
    @tratamiento = tratamientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tratamientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tratamiento" do
    assert_difference('Tratamiento.count') do
      post :create, tratamiento: { commonname_id: @tratamiento.commonname_id, fecha: @tratamiento.fecha, signos_clinicos: @tratamiento.signos_clinicos }
    end

    assert_redirected_to tratamiento_path(assigns(:tratamiento))
  end

  test "should show tratamiento" do
    get :show, id: @tratamiento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tratamiento
    assert_response :success
  end

  test "should update tratamiento" do
    patch :update, id: @tratamiento, tratamiento: { commonname_id: @tratamiento.commonname_id, fecha: @tratamiento.fecha, signos_clinicos: @tratamiento.signos_clinicos }
    assert_redirected_to tratamiento_path(assigns(:tratamiento))
  end

  test "should destroy tratamiento" do
    assert_difference('Tratamiento.count', -1) do
      delete :destroy, id: @tratamiento
    end

    assert_redirected_to tratamientos_path
  end
end
