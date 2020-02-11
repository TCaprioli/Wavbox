require 'test_helper'

class ContentControllersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get content_controllers_index_url
    assert_response :success
  end

  test "should get show" do
    get content_controllers_show_url
    assert_response :success
  end

  test "should get edit" do
    get content_controllers_edit_url
    assert_response :success
  end

  test "should get update" do
    get content_controllers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get content_controllers_destroy_url
    assert_response :success
  end

  test "should get create" do
    get content_controllers_create_url
    assert_response :success
  end

  test "should get new" do
    get content_controllers_new_url
    assert_response :success
  end

end
