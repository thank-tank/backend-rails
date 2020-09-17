require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = "       "
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = "       "
    assert_not @user.email?
  end

  test "name length validation" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  test "email length validation" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  test "valid email formats" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "invalid email formats" do
    invalid_addresses = %w[user@example,com USERfoo.COM A_US-ER@@foo.bar.org first.last@foo_asdf.jp alice+bob@baz+asdf.cn]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "email uniqueness" do
    dup_user = @user.dup
    @user.save
    assert_not dup_user.valid?
  end

  test "email saved as lowercase" do
    test_email = "FAFfaf@fAF.CoM"
    @user.email = test_email
    @user.save
    assert_equal test_email.downcase, @user.reload.email
  end
end
