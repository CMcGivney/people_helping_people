require 'test_helper'

class PeoplesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get peoples_index_url
    assert_response :success
  end

  test "should get new" do
    get peoples_new_url
    assert_response :success
  end

  test "should get edit" do
    get peoples_edit_url
    assert_response :success
  end

  test "should get show" do
    get peoples_show_url
    assert_response :success
  end

  test "should get create" do
    get peoples_create_url
    assert_response :success
  end

end
