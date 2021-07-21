require "application_system_test_case"

class StreamCodesTest < ApplicationSystemTestCase
  setup do
    @stream_code = stream_codes(:one)
  end

  test "visiting the index" do
    visit stream_codes_url
    assert_selector "h1", text: "Stream Codes"
  end

  test "creating a Stream code" do
    visit stream_codes_url
    click_on "New Stream Code"

    fill_in "Code", with: @stream_code.code
    fill_in "Redirect", with: @stream_code.redirect
    click_on "Create Stream code"

    assert_text "Stream code was successfully created"
    click_on "Back"
  end

  test "updating a Stream code" do
    visit stream_codes_url
    click_on "Edit", match: :first

    fill_in "Code", with: @stream_code.code
    fill_in "Redirect", with: @stream_code.redirect
    click_on "Update Stream code"

    assert_text "Stream code was successfully updated"
    click_on "Back"
  end

  test "destroying a Stream code" do
    visit stream_codes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stream code was successfully destroyed"
  end
end
