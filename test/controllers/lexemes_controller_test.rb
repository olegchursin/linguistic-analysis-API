require 'test_helper'

class LexemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lexeme = lexemes(:one)
  end

  test "should get index" do
    get lexemes_url, as: :json
    assert_response :success
  end

  test "should create lexeme" do
    assert_difference('Lexeme.count') do
      post lexemes_url, params: { lexeme: { name: @lexeme.name, project_id: @lexeme.project_id } }, as: :json
    end

    assert_response 201
  end

  test "should show lexeme" do
    get lexeme_url(@lexeme), as: :json
    assert_response :success
  end

  test "should update lexeme" do
    patch lexeme_url(@lexeme), params: { lexeme: { name: @lexeme.name, project_id: @lexeme.project_id } }, as: :json
    assert_response 200
  end

  test "should destroy lexeme" do
    assert_difference('Lexeme.count', -1) do
      delete lexeme_url(@lexeme), as: :json
    end

    assert_response 204
  end
end
