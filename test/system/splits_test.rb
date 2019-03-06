require "application_system_test_case"

class SplitsTest < ApplicationSystemTestCase
  setup do
    @split = splits(:one)
  end

  test "visiting the index" do
    visit splits_url
    assert_selector "h1", text: "Splits"
  end

  test "creating a Split" do
    visit splits_url
    click_on "New Split"

    fill_in "Dimensions", with: @split.dimensions
    fill_in "Net weight", with: @split.net_weight
    fill_in "Packed sizes", with: @split.packed_sizes
    fill_in "Power usage", with: @split.power_usage
    fill_in "Refrigerant", with: @split.refrigerant
    fill_in "String", with: @split.string
    fill_in "Temperature condition", with: @split.temperature_condition
    fill_in "Voltage", with: @split.voltage
    click_on "Create Split"

    assert_text "Split was successfully created"
    click_on "Back"
  end

  test "updating a Split" do
    visit splits_url
    click_on "Edit", match: :first

    fill_in "Dimensions", with: @split.dimensions
    fill_in "Net weight", with: @split.net_weight
    fill_in "Packed sizes", with: @split.packed_sizes
    fill_in "Power usage", with: @split.power_usage
    fill_in "Refrigerant", with: @split.refrigerant
    fill_in "String", with: @split.string
    fill_in "Temperature condition", with: @split.temperature_condition
    fill_in "Voltage", with: @split.voltage
    click_on "Update Split"

    assert_text "Split was successfully updated"
    click_on "Back"
  end

  test "destroying a Split" do
    visit splits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Split was successfully destroyed"
  end
end
