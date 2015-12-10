require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get inicio" do
    get :inicio
    assert_response :success
  end

  test "should get quienes_somos" do
    get :quienes_somos
    assert_response :success
  end

  test "should get presupuesto" do
    get :presupuesto
    assert_response :success
  end

end
