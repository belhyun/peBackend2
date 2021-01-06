require 'test_helper'

class PeExchangeCommonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pe_exchange_common = pe_exchange_commons(:one)
  end

  test "should get index" do
    get pe_exchange_commons_url
    assert_response :success
  end

  test "should get new" do
    get new_pe_exchange_common_url
    assert_response :success
  end

  test "should create pe_exchange_common" do
    assert_difference('PeExchangeCommon.count') do
      post pe_exchange_commons_url, params: { pe_exchange_common: { banner: @pe_exchange_common.banner, interval: @pe_exchange_common.interval, maintenance: @pe_exchange_common.maintenance } }
    end

    assert_redirected_to pe_exchange_common_url(PeExchangeCommon.last)
  end

  test "should show pe_exchange_common" do
    get pe_exchange_common_url(@pe_exchange_common)
    assert_response :success
  end

  test "should get edit" do
    get edit_pe_exchange_common_url(@pe_exchange_common)
    assert_response :success
  end

  test "should update pe_exchange_common" do
    patch pe_exchange_common_url(@pe_exchange_common), params: { pe_exchange_common: { banner: @pe_exchange_common.banner, interval: @pe_exchange_common.interval, maintenance: @pe_exchange_common.maintenance } }
    assert_redirected_to pe_exchange_common_url(@pe_exchange_common)
  end

  test "should destroy pe_exchange_common" do
    assert_difference('PeExchangeCommon.count', -1) do
      delete pe_exchange_common_url(@pe_exchange_common)
    end

    assert_redirected_to pe_exchange_commons_url
  end
end
