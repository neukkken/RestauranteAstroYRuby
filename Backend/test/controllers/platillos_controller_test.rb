require "test_helper"

class PlatillosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @platillo = platillos(:one)
  end

  test "should get index" do
    get platillos_url, as: :json
    assert_response :success
  end

  test "should create platillo" do
    assert_difference("Platillo.count") do
      post platillos_url, params: { platillo: { descripcion: @platillo.descripcion, icono: @platillo.icono, imgPlato: @platillo.imgPlato, nombre=string: @platillo.nombre=string, oferta: @platillo.oferta, precio: @platillo.precio, tiempo: @platillo.tiempo } }, as: :json
    end

    assert_response :created
  end

  test "should show platillo" do
    get platillo_url(@platillo), as: :json
    assert_response :success
  end

  test "should update platillo" do
    patch platillo_url(@platillo), params: { platillo: { descripcion: @platillo.descripcion, icono: @platillo.icono, imgPlato: @platillo.imgPlato, nombre=string: @platillo.nombre=string, oferta: @platillo.oferta, precio: @platillo.precio, tiempo: @platillo.tiempo } }, as: :json
    assert_response :success
  end

  test "should destroy platillo" do
    assert_difference("Platillo.count", -1) do
      delete platillo_url(@platillo), as: :json
    end

    assert_response :no_content
  end
end
