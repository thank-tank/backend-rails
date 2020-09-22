ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use!

class ActiveSupport::TestCase
  parallelize(workers: :number_of_processors)
  fixtures :all
  include AppHelper

  # returns true if a test user is logged in
  def is_logged_in?
    !session[:user_id].nil?
  end

  # log in as a particular user
  def log_in_as(user)
    session[:user_id] = user.id
  end
end

class ActionDispatch::IntegrationTest

  # Log In as a particular user
  def log_in_as(user, password: 'password', remember_me: '1')
    post login_path, params: { session: { email: user.email,
                                          password: password,
                                          remember_me: remember_me } }
  end
end
