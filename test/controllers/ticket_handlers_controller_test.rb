require "test_helper"

class TicketHandlersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket_handler = ticket_handlers(:one)
  end

  test "should get index" do
    get ticket_handlers_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_handler_url
    assert_response :success
  end

  test "should create ticket_handler" do
    assert_difference('TicketHandler.count') do
      post ticket_handlers_url, params: { ticket_handler: { amount: @ticket_handler.amount, code: @ticket_handler.code, date: @ticket_handler.date, event: @ticket_handler.event, is_ticket: @ticket_handler.is_ticket } }
    end

    assert_redirected_to ticket_handler_url(TicketHandler.last)
  end

  test "should show ticket_handler" do
    get ticket_handler_url(@ticket_handler)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_handler_url(@ticket_handler)
    assert_response :success
  end

  test "should update ticket_handler" do
    patch ticket_handler_url(@ticket_handler), params: { ticket_handler: { amount: @ticket_handler.amount, code: @ticket_handler.code, date: @ticket_handler.date, event: @ticket_handler.event, is_ticket: @ticket_handler.is_ticket } }
    assert_redirected_to ticket_handler_url(@ticket_handler)
  end

  test "should destroy ticket_handler" do
    assert_difference('TicketHandler.count', -1) do
      delete ticket_handler_url(@ticket_handler)
    end

    assert_redirected_to ticket_handlers_url
  end
end
