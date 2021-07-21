require "application_system_test_case"

class StreamQueriesTest < ApplicationSystemTestCase
  setup do
    @stream_query = stream_queries(:one)
  end

  test "visiting the index" do
    visit stream_queries_url
    assert_selector "h1", text: "Stream Queries"
  end

  test "creating a Stream query" do
    visit stream_queries_url
    click_on "New Stream Query"

    fill_in "Code", with: @stream_query.code
    click_on "Create Stream query"

    assert_text "Stream query was successfully created"
    click_on "Back"
  end

  test "updating a Stream query" do
    visit stream_queries_url
    click_on "Edit", match: :first

    fill_in "Code", with: @stream_query.code
    click_on "Update Stream query"

    assert_text "Stream query was successfully updated"
    click_on "Back"
  end

  test "destroying a Stream query" do
    visit stream_queries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stream query was successfully destroyed"
  end
end
