require "application_system_test_case"

class MonoblocksTest < ApplicationSystemTestCase
  setup do
    @monoblock = monoblocks(:one)
  end

  test "visiting the index" do
    visit monoblocks_url
    assert_selector "h1", text: "Monoblocks"
  end

  test "creating a Monoblock" do
    visit monoblocks_url
    click_on "New Monoblock"

    fill_in "Dimensions", with: @monoblock.dimensions
    fill_in "Net weight", with: @monoblock.net_weight
    fill_in "Packed sizes", with: @monoblock.packed_sizes
    fill_in "Power usage", with: @monoblock.power_usage
    fill_in "Refrigerant", with: @monoblock.refrigerant
    fill_in "String", with: @monoblock.string
    fill_in "Temperature condition", with: @monoblock.temperature_condition
    fill_in "Voltage", with: @monoblock.voltage
    click_on "Create Monoblock"

    assert_text "Monoblock was successfully created"
    click_on "Back"
  end

  test "updating a Monoblock" do
    visit monoblocks_url
    click_on "Edit", match: :first

    fill_in "Dimensions", with: @monoblock.dimensions
    fill_in "Net weight", with: @monoblock.net_weight
    fill_in "Packed sizes", with: @monoblock.packed_sizes
    fill_in "Power usage", with: @monoblock.power_usage
    fill_in "Refrigerant", with: @monoblock.refrigerant
    fill_in "String", with: @monoblock.string
    fill_in "Temperature condition", with: @monoblock.temperature_condition
    fill_in "Voltage", with: @monoblock.voltage
    click_on "Update Monoblock"

    assert_text "Monoblock was successfully updated"
    click_on "Back"
  end

  test "destroying a Monoblock" do
    visit monoblocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Monoblock was successfully destroyed"
  end
end
