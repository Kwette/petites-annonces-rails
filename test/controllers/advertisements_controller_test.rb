require 'test_helper'

class AdvertisementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get advertisements_index_url
    assert_response :success
  end

  test "should get show" do
    get advertisements_show_url
    assert_response :success
  end

  test "should get new" do
    get advertisements_new_url
    assert_response :success
  end

  test "should get create" do
    get advertisements_create_url
    assert_response :success
  end

  test "should get edit" do
    get advertisements_edit_url
    assert_response :success
  end

  test "should get update" do
    get advertisements_update_url
    assert_response :success
  end

  test "should get destroy" do
    get advertisements_destroy_url
    assert_response :success
  end

end
