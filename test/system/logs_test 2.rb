require "application_system_test_case"

class LogsTest < ApplicationSystemTestCase
  setup do
    @log = logs(:one)
  end

  test "visiting the index" do
    visit logs_url
    assert_selector "h1", text: "Logs"
  end

  test "creating a Log" do
    visit logs_url
    click_on "New Log"

    fill_in "Date of session", with: @log.date_of_session
    fill_in "Details", with: @log.details
    fill_in "Reference code", with: @log.reference_code
    fill_in "Time of sesion", with: @log.time_of_sesion
    click_on "Create Log"

    assert_text "Log was successfully created"
    click_on "Back"
  end

  test "updating a Log" do
    visit logs_url
    click_on "Edit", match: :first

    fill_in "Date of session", with: @log.date_of_session
    fill_in "Details", with: @log.details
    fill_in "Reference code", with: @log.reference_code
    fill_in "Time of sesion", with: @log.time_of_sesion
    click_on "Update Log"

    assert_text "Log was successfully updated"
    click_on "Back"
  end

  test "destroying a Log" do
    visit logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Log was successfully destroyed"
  end
end
