require 'test_helper'

class TextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @text = texts(:one)
  end

  test "should get index" do
    get texts_url, as: :json
    assert_response :success
  end

  test "should create text" do
    assert_difference('Text.count') do
      post texts_url, params: { text: { content: @text.content, project_id: @text.project_id, title: @text.title } }, as: :json
    end

    assert_response 201
  end

  test "should show text" do
    get text_url(@text), as: :json
    assert_response :success
  end

  test "should update text" do
    patch text_url(@text), params: { text: { content: @text.content, project_id: @text.project_id, title: @text.title } }, as: :json
    assert_response 200
  end

  test "should destroy text" do
    assert_difference('Text.count', -1) do
      delete text_url(@text), as: :json
    end

    assert_response 204
  end
end
