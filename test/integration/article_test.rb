require 'test_helper'

class ArticleTest < ActionDispatch::IntegrationTest

  def setup
    @user = User.create(username: "john", email: "john@example.com", password: "password")
  end

  test 'article creation is successful' do
    sign_in_as(@user, "password")
    get new_article_path
    assert_template 'articles/new'
    assert_difference 'Article.count', 1 do
      post articles_path, params: { article: { title: "I like cats", description: "This is an article? I guess." } }
    end
  end

end
