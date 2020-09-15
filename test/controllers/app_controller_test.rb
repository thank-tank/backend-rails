require 'test_helper'

class AppControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "ThankTank |"
  end

  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title} Home"
  end

  test "should get home" do
    get home_path
    assert_response :success
    assert_select "title", "#{@base_title} Home"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "#{@base_title} About"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "#{@base_title} Contact"
  end

  test "should get profile" do
    get profile_path
    assert_response :success
    assert_select "title", "#{@base_title} Profile"
  end
end
