require "application_system_test_case"

class ClientCodesTest < ApplicationSystemTestCase
  setup do
    @client_code = client_codes(:one)
  end

  test "visiting the index" do
    visit client_codes_url
    assert_selector "h1", text: "Client Codes"
  end

  test "creating a Client code" do
    visit client_codes_url
    click_on "New Client Code"

    fill_in "Client", with: @client_code.client
    fill_in "Code", with: @client_code.code
    click_on "Create Client code"

    assert_text "Client code was successfully created"
    click_on "Back"
  end

  test "updating a Client code" do
    visit client_codes_url
    click_on "Edit", match: :first

    fill_in "Client", with: @client_code.client
    fill_in "Code", with: @client_code.code
    click_on "Update Client code"

    assert_text "Client code was successfully updated"
    click_on "Back"
  end

  test "destroying a Client code" do
    visit client_codes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client code was successfully destroyed"
  end
end
