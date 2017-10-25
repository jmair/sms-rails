require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get send_message" do
    get home_send_message_url
    assert_response :success
  end

  test "should get fetch_contacts" do
    get home_fetch_contacts_url
    assert_response :success
  end

end
