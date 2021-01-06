require 'test_helper'

class PeTradeExchangesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pe_trade_exchange = pe_trade_exchanges(:one)
  end

  test "should get index" do
    get pe_trade_exchanges_url
    assert_response :success
  end

  test "should get new" do
    get new_pe_trade_exchange_url
    assert_response :success
  end

  test "should create pe_trade_exchange" do
    assert_difference('PeTradeExchange.count') do
      post pe_trade_exchanges_url, params: { pe_trade_exchange: { need_type: @pe_trade_exchange.need_type, need_value: @pe_trade_exchange.need_value, order: @pe_trade_exchange.order, target_type: @pe_trade_exchange.target_type, target_value: @pe_trade_exchange.target_value } }
    end

    assert_redirected_to pe_trade_exchange_url(PeTradeExchange.last)
  end

  test "should show pe_trade_exchange" do
    get pe_trade_exchange_url(@pe_trade_exchange)
    assert_response :success
  end

  test "should get edit" do
    get edit_pe_trade_exchange_url(@pe_trade_exchange)
    assert_response :success
  end

  test "should update pe_trade_exchange" do
    patch pe_trade_exchange_url(@pe_trade_exchange), params: { pe_trade_exchange: { need_type: @pe_trade_exchange.need_type, need_value: @pe_trade_exchange.need_value, order: @pe_trade_exchange.order, target_type: @pe_trade_exchange.target_type, target_value: @pe_trade_exchange.target_value } }
    assert_redirected_to pe_trade_exchange_url(@pe_trade_exchange)
  end

  test "should destroy pe_trade_exchange" do
    assert_difference('PeTradeExchange.count', -1) do
      delete pe_trade_exchange_url(@pe_trade_exchange)
    end

    assert_redirected_to pe_trade_exchanges_url
  end
end
