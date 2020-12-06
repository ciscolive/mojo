require "application_system_test_case"

class DevicesTest < ApplicationSystemTestCase
  setup do
    @device = devices(:one)
  end

  test "visiting the index" do
    visit devices_url
    assert_selector "h1", text: "Devices"
  end

  test "creating a Device" do
    visit devices_url
    click_on "New Device"

    fill_in "Contact", with: @device.contact
    fill_in "Hostname", with: @device.hostname
    fill_in "Ip", with: @device.ip
    fill_in "Location", with: @device.location
    fill_in "Os", with: @device.os
    fill_in "Os ver", with: @device.os_ver
    fill_in "Serail", with: @device.serail
    fill_in "Snmp comm", with: @device.snmp_comm
    fill_in "Vendor", with: @device.vendor
    click_on "Create Device"

    assert_text "Device was successfully created"
    click_on "Back"
  end

  test "updating a Device" do
    visit devices_url
    click_on "Edit", match: :first

    fill_in "Contact", with: @device.contact
    fill_in "Hostname", with: @device.hostname
    fill_in "Ip", with: @device.ip
    fill_in "Location", with: @device.location
    fill_in "Os", with: @device.os
    fill_in "Os ver", with: @device.os_ver
    fill_in "Serail", with: @device.serail
    fill_in "Snmp comm", with: @device.snmp_comm
    fill_in "Vendor", with: @device.vendor
    click_on "Update Device"

    assert_text "Device was successfully updated"
    click_on "Back"
  end

  test "destroying a Device" do
    visit devices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Device was successfully destroyed"
  end
end
