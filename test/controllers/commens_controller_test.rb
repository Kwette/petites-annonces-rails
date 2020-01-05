require 'test_helper'

class CommensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get commens_index_url
    assert_response :success
  end

  test "should get show" do
    get commens_show_url
    assert_response :success
  end

  test "should get new" do
    get commens_new_url
    assert_response :success
  end

  test "should get create" do
    get commens_create_url
    assert_response :success
  end

  test "should get edit" do
    get commens_edit_url
    assert_response :success
  end

  test "should get update" do
    get commens_update_url
    assert_response :success
  end

  test "should get destroy" do
    get commens_destroy_url
    assert_response :success
  end

end
