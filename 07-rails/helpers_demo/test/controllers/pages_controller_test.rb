require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get numbers" do
    get :numbers
    assert_response :success
  end

  test "should get text" do
    get :text
    assert_response :success
  end

  test "should get assets" do
    get :assets
    assert_response :success
  end

  test "should get url" do
    get :url
    assert_response :success
  end

end
