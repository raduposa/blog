require "test_helper"

class ArticlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articl = articls(:one)
  end

  test "should get index" do
    get articls_url
    assert_response :success
  end

  test "should get new" do
    get new_articl_url
    assert_response :success
  end

  test "should create articl" do
    assert_difference("Articl.count") do
      post articls_url, params: { articl: { description: @articl.description, title: @articl.title } }
    end

    assert_redirected_to articl_url(Articl.last)
  end

  test "should show articl" do
    get articl_url(@articl)
    assert_response :success
  end

  test "should get edit" do
    get edit_articl_url(@articl)
    assert_response :success
  end

  test "should update articl" do
    patch articl_url(@articl), params: { articl: { description: @articl.description, title: @articl.title } }
    assert_redirected_to articl_url(@articl)
  end

  test "should destroy articl" do
    assert_difference("Articl.count", -1) do
      delete articl_url(@articl)
    end

    assert_redirected_to articls_url
  end
end
