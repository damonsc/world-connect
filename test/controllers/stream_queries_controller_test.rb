require "test_helper"

class StreamQueriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stream_query = stream_queries(:one)
  end

  test "should get index" do
    get stream_queries_url
    assert_response :success
  end

  test "should get new" do
    get new_stream_query_url
    assert_response :success
  end

  test "should create stream_query" do
    assert_difference('StreamQuery.count') do
      post stream_queries_url, params: { stream_query: { code: @stream_query.code } }
    end

    assert_redirected_to stream_query_url(StreamQuery.last)
  end

  test "should show stream_query" do
    get stream_query_url(@stream_query)
    assert_response :success
  end

  test "should get edit" do
    get edit_stream_query_url(@stream_query)
    assert_response :success
  end

  test "should update stream_query" do
    patch stream_query_url(@stream_query), params: { stream_query: { code: @stream_query.code } }
    assert_redirected_to stream_query_url(@stream_query)
  end

  test "should destroy stream_query" do
    assert_difference('StreamQuery.count', -1) do
      delete stream_query_url(@stream_query)
    end

    assert_redirected_to stream_queries_url
  end
end
