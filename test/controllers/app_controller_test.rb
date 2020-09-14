require 'test_helper'

class AppControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get app_home_url
    assert_response :success
  end

  test "should get profile" do
    get app_profile_url
    assert_response :success
  end

  test "should get about" do
    get app_about_url
    assert_response :success
  end

  test "should get contact" do
    get app_contact_url
    assert_response :success
  end

end
