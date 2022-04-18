require "test_helper"

class GendresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gendres_index_url
    assert_response :success
  end

  test "should get create" do
    get gendres_create_url
    assert_response :success
  end

  test "should get update" do
    get gendres_update_url
    assert_response :success
  end

  test "should get destroy" do
    get gendres_destroy_url
    assert_response :success
  end
end
