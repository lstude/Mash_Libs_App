require 'test_helper'

class SheetsControllerTest < ActionController::TestCase
  setup do
    @sheet = sheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sheet" do
    assert_difference('Sheet.count') do
      post :create, sheet: { a_what: @sheet.a_what, a_when: @sheet.a_when, a_where: @sheet.a_where, a_who: @sheet.a_who, a_why: @sheet.a_why, game_id: @sheet.game_id, player_id: @sheet.player_id, q_what: @sheet.q_what, q_when: @sheet.q_when, q_where: @sheet.q_where, q_who: @sheet.q_who, q_why: @sheet.q_why }
    end

    assert_redirected_to sheet_path(assigns(:sheet))
  end

  test "should show sheet" do
    get :show, id: @sheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sheet
    assert_response :success
  end

  test "should update sheet" do
    put :update, id: @sheet, sheet: { a_what: @sheet.a_what, a_when: @sheet.a_when, a_where: @sheet.a_where, a_who: @sheet.a_who, a_why: @sheet.a_why, game_id: @sheet.game_id, player_id: @sheet.player_id, q_what: @sheet.q_what, q_when: @sheet.q_when, q_where: @sheet.q_where, q_who: @sheet.q_who, q_why: @sheet.q_why }
    assert_redirected_to sheet_path(assigns(:sheet))
  end

  test "should destroy sheet" do
    assert_difference('Sheet.count', -1) do
      delete :destroy, id: @sheet
    end

    assert_redirected_to sheets_path
  end
end
