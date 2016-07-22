require 'test_helper'

class BurgersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get burgers_index_url
    assert_response :success
  end

  test "should get show" do
    get burgers_show_url
    assert_response :success
  end

  test "should get new" do
    get burgers_new_url
    assert_response :success
  end

  test "should get create" do
    get burgers_create_url
    assert_response :success
  end

  test "should get destroy" do
    get burgers_destroy_url
    assert_response :success
  end

end
