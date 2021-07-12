require "application_system_test_case"

class ConnectCodesTest < ApplicationSystemTestCase
  setup do
    @connect_code = connect_codes(:one)
  end

  test "visiting the index" do
    visit connect_codes_url
    assert_selector "h1", text: "Connect Codes"
  end

  test "creating a Connect code" do
    visit connect_codes_url
    click_on "New Connect Code"

    fill_in "Assigned", with: @connect_code.assigned
    fill_in "Code", with: @connect_code.code
    click_on "Create Connect code"

    assert_text "Connect code was successfully created"
    click_on "Back"
  end

  test "updating a Connect code" do
    visit connect_codes_url
    click_on "Edit", match: :first

    fill_in "Assigned", with: @connect_code.assigned
    fill_in "Code", with: @connect_code.code
    click_on "Update Connect code"

    assert_text "Connect code was successfully updated"
    click_on "Back"
  end

  test "destroying a Connect code" do
    visit connect_codes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Connect code was successfully destroyed"
  end
end
