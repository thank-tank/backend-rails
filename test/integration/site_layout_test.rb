require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get home_path
    assert_template "app/home"
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", login_path, count: 1
    assert_select "a[href=?]", signup_path, count: 2
    assert_select "a[href=?]", profile_path, count: 0
    assert_select "a[href=?]", about_path, count: 1
    assert_select "a[href=?]", contact_path, count: 1

    get contact_path
    assert_select "title", full_title("Contact")
    get about_path
    assert_select "title", full_title("About")

    get signup_path
    assert_select "title", full_title("Sign Up")
  end
end
