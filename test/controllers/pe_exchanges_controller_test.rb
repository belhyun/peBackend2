require 'test_helper'

class PeExchangesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pe_exchange = pe_exchanges(:one)
  end

  test "should get index" do
    get pe_exchanges_url
    assert_response :success
  end

  test "should get new" do
    get new_pe_exchange_url
    assert_response :success
  end

  test "should create pe_exchange" do
    assert_difference('PeExchange.count') do
      post pe_exchanges_url, params: { pe_exchange: { address1: @pe_exchange.address1, address2: @pe_exchange.address2, city: @pe_exchange.city, id_card: @pe_exchange.id_card, name: @pe_exchange.name, phone: @pe_exchange.phone, prize_date: @pe_exchange.prize_date, product_d: @pe_exchange.product_d, state: @pe_exchange.state, status: @pe_exchange.status, user_id: @pe_exchange.user_id, zip: @pe_exchange.zip } }
    end

    assert_redirected_to pe_exchange_url(PeExchange.last)
  end

  test "should show pe_exchange" do
    get pe_exchange_url(@pe_exchange)
    assert_response :success
  end

  test "should get edit" do
    get edit_pe_exchange_url(@pe_exchange)
    assert_response :success
  end

  test "should update pe_exchange" do
    patch pe_exchange_url(@pe_exchange), params: { pe_exchange: { address1: @pe_exchange.address1, address2: @pe_exchange.address2, city: @pe_exchange.city, id_card: @pe_exchange.id_card, name: @pe_exchange.name, phone: @pe_exchange.phone, prize_date: @pe_exchange.prize_date, product_d: @pe_exchange.product_d, state: @pe_exchange.state, status: @pe_exchange.status, user_id: @pe_exchange.user_id, zip: @pe_exchange.zip } }
    assert_redirected_to pe_exchange_url(@pe_exchange)
  end

  test "should destroy pe_exchange" do
    assert_difference('PeExchange.count', -1) do
      delete pe_exchange_url(@pe_exchange)
    end

    assert_redirected_to pe_exchanges_url
  end
end
