require 'test_helper'

class TrackersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trackers_index_url
    assert_response :success
  end

  test "should get show" do
    get trackers_show_url
    assert_response :success
  end

  test "should get new" do
    get trackers_new_url
    assert_response :success
  end

  test "should get create" do
    get trackers_create_url
    assert_response :success
  end

end
