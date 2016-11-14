require 'test_helper'

class AutorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get autor_index_url
    assert_response :success
  end

  test "should get new" do
    get autor_new_url
    assert_response :success
  end

  test "should get edit" do
    get autor_edit_url
    assert_response :success
  end

end
