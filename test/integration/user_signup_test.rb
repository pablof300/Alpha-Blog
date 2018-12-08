require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest

  test 'user sign up' do
    get signup_path
    assert_template 'users/new'
    assert_difference 'User.count', 1 do
      post users_path, params: { user: {username: 'valid', email: 'pablo@gmail.com', password: 'cats' } }
    end
  end
end
