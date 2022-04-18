require "test_helper"

class MoviesSeriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get movies_series_index_url
    assert_response :success
  end

  test "should get create" do
    get movies_series_create_url
    assert_response :success
  end

  test "should get update" do
    get movies_series_update_url
    assert_response :success
  end

  test "should get destroy" do
    get movies_series_destroy_url
    assert_response :success
  end
end
