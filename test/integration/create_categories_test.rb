require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest

  test "get new category form and create category" do
    get new_category_path
    # Rails 5 requires the gem 'rails-controller-testing to use assert_template'
    assert_template 'categories/new'
    post categories_path, params: { category: {name: 'sports' } }
    follow_redirect!
    assert_template 'categories/index'
    assert_match "sports", response.body
  end

end
