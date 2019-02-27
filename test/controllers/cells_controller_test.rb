require 'test_helper'

class CellsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cell = cells(:one)
  end

  test "should get index" do
    get cells_url
    assert_response :success
  end

  test "should get new" do
    get new_cell_url
    assert_response :success
  end

  test "should create cell" do
    assert_difference('Cell.count') do
      post cells_url, params: { cell: { dimensions: @cell.dimensions, net_weight: @cell.net_weight, packed_sizes: @cell.packed_sizes, product_id_id: @cell.product_id_id, space: @cell.space, temperature_range: @cell.temperature_range } }
    end

    assert_redirected_to cell_url(Cell.last)
  end

  test "should show cell" do
    get cell_url(@cell)
    assert_response :success
  end

  test "should get edit" do
    get edit_cell_url(@cell)
    assert_response :success
  end

  test "should update cell" do
    patch cell_url(@cell), params: { cell: { dimensions: @cell.dimensions, net_weight: @cell.net_weight, packed_sizes: @cell.packed_sizes, product_id_id: @cell.product_id_id, space: @cell.space, temperature_range: @cell.temperature_range } }
    assert_redirected_to cell_url(@cell)
  end

  test "should destroy cell" do
    assert_difference('Cell.count', -1) do
      delete cell_url(@cell)
    end

    assert_redirected_to cells_url
  end
end
