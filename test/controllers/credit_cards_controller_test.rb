require 'test_helper'

class CreditCardsControllerTest < ActionController::TestCase
  setup do
    @credit_card = credit_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:credit_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create credit_card" do
    assert_difference('CreditCard.count') do
      post :create, credit_card: { : @credit_card., annual_fee: @credit_card.annual_fee, bank: @credit_card.bank, card_name: @credit_card.card_name, cashback: @credit_card.cashback, desciption: @credit_card.desciption, joining_fee: @credit_card.joining_fee, reward_point_per_unit: @credit_card.reward_point_per_unit, shopping: @credit_card.shopping, travel: @credit_card.travel }
    end

    assert_redirected_to credit_card_path(assigns(:credit_card))
  end

  test "should show credit_card" do
    get :show, id: @credit_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @credit_card
    assert_response :success
  end

  test "should update credit_card" do
    patch :update, id: @credit_card, credit_card: { : @credit_card., annual_fee: @credit_card.annual_fee, bank: @credit_card.bank, card_name: @credit_card.card_name, cashback: @credit_card.cashback, desciption: @credit_card.desciption, joining_fee: @credit_card.joining_fee, reward_point_per_unit: @credit_card.reward_point_per_unit, shopping: @credit_card.shopping, travel: @credit_card.travel }
    assert_redirected_to credit_card_path(assigns(:credit_card))
  end

  test "should destroy credit_card" do
    assert_difference('CreditCard.count', -1) do
      delete :destroy, id: @credit_card
    end

    assert_redirected_to credit_cards_path
  end
end
