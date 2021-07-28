require "application_system_test_case"

class TicketHandlersTest < ApplicationSystemTestCase
  setup do
    @ticket_handler = ticket_handlers(:one)
  end

  test "visiting the index" do
    visit ticket_handlers_url
    assert_selector "h1", text: "Ticket Handlers"
  end

  test "creating a Ticket handler" do
    visit ticket_handlers_url
    click_on "New Ticket Handler"

    fill_in "Amount", with: @ticket_handler.amount
    fill_in "Code", with: @ticket_handler.code
    fill_in "Date", with: @ticket_handler.date
    fill_in "Event", with: @ticket_handler.event
    check "Is ticket" if @ticket_handler.is_ticket
    click_on "Create Ticket handler"

    assert_text "Ticket handler was successfully created"
    click_on "Back"
  end

  test "updating a Ticket handler" do
    visit ticket_handlers_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @ticket_handler.amount
    fill_in "Code", with: @ticket_handler.code
    fill_in "Date", with: @ticket_handler.date
    fill_in "Event", with: @ticket_handler.event
    check "Is ticket" if @ticket_handler.is_ticket
    click_on "Update Ticket handler"

    assert_text "Ticket handler was successfully updated"
    click_on "Back"
  end

  test "destroying a Ticket handler" do
    visit ticket_handlers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ticket handler was successfully destroyed"
  end
end
