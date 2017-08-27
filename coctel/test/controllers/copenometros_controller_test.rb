require 'test_helper'

class CopenometrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @copenometro = copenometros(:one)
  end

  test "should get index" do
    get copenometros_url
    assert_response :success
  end

  test "should get new" do
    get new_copenometro_url
    assert_response :success
  end

  test "should create copenometro" do
    assert_difference('Copenometro.count') do
      post copenometros_url, params: { copenometro: { grado: @copenometro.grado, liquido: @copenometro.liquido, ml: @copenometro.ml } }
    end

    assert_redirected_to copenometro_url(Copenometro.last)
  end

  test "should show copenometro" do
    get copenometro_url(@copenometro)
    assert_response :success
  end

  test "should get edit" do
    get edit_copenometro_url(@copenometro)
    assert_response :success
  end

  test "should update copenometro" do
    patch copenometro_url(@copenometro), params: { copenometro: { grado: @copenometro.grado, liquido: @copenometro.liquido, ml: @copenometro.ml } }
    assert_redirected_to copenometro_url(@copenometro)
  end

  test "should destroy copenometro" do
    assert_difference('Copenometro.count', -1) do
      delete copenometro_url(@copenometro)
    end

    assert_redirected_to copenometros_url
  end
end
