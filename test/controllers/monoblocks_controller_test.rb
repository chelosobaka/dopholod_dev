require 'test_helper'

class MonoblocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monoblock = monoblocks(:one)
  end

  test "should get index" do
    get monoblocks_url
    assert_response :success
  end

  test "should get new" do
    get new_monoblock_url
    assert_response :success
  end

  test "should create monoblock" do
    assert_difference('Monoblock.count') do
      post monoblocks_url, params: { monoblock: { dimensions: @monoblock.dimensions, net_weight: @monoblock.net_weight, packed_sizes: @monoblock.packed_sizes, power_usage: @monoblock.power_usage, refrigerant: @monoblock.refrigerant, string: @monoblock.string, temperature_condition: @monoblock.temperature_condition, voltage: @monoblock.voltage } }
    end

    assert_redirected_to monoblock_url(Monoblock.last)
  end

  test "should show monoblock" do
    get monoblock_url(@monoblock)
    assert_response :success
  end

  test "should get edit" do
    get edit_monoblock_url(@monoblock)
    assert_response :success
  end

  test "should update monoblock" do
    patch monoblock_url(@monoblock), params: { monoblock: { dimensions: @monoblock.dimensions, net_weight: @monoblock.net_weight, packed_sizes: @monoblock.packed_sizes, power_usage: @monoblock.power_usage, refrigerant: @monoblock.refrigerant, string: @monoblock.string, temperature_condition: @monoblock.temperature_condition, voltage: @monoblock.voltage } }
    assert_redirected_to monoblock_url(@monoblock)
  end

  test "should destroy monoblock" do
    assert_difference('Monoblock.count', -1) do
      delete monoblock_url(@monoblock)
    end

    assert_redirected_to monoblocks_url
  end
end
