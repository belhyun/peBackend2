require 'test_helper'

class PeExchangeProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pe_exchange_product = pe_exchange_products(:one)
  end

  test "should get index" do
    get pe_exchange_products_url
    assert_response :success
  end

  test "should get new" do
    get new_pe_exchange_product_url
    assert_response :success
  end

  test "should create pe_exchange_product" do
    assert_difference('PeExchangeProduct.count') do
      post pe_exchange_products_url, params: { pe_exchange_product: { group_id: @pe_exchange_product.group_id, limit: @pe_exchange_product.limit, order: @pe_exchange_product.order, price: @pe_exchange_product.price, price_type: @pe_exchange_product.price_type, product_id: @pe_exchange_product.product_id, status: @pe_exchange_product.status } }
    end

    assert_redirected_to pe_exchange_product_url(PeExchangeProduct.last)
  end

  test "should show pe_exchange_product" do
    get pe_exchange_product_url(@pe_exchange_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_pe_exchange_product_url(@pe_exchange_product)
    assert_response :success
  end

  test "should update pe_exchange_product" do
    patch pe_exchange_product_url(@pe_exchange_product), params: { pe_exchange_product: { group_id: @pe_exchange_product.group_id, limit: @pe_exchange_product.limit, order: @pe_exchange_product.order, price: @pe_exchange_product.price, price_type: @pe_exchange_product.price_type, product_id: @pe_exchange_product.product_id, status: @pe_exchange_product.status } }
    assert_redirected_to pe_exchange_product_url(@pe_exchange_product)
  end

  test "should destroy pe_exchange_product" do
    assert_difference('PeExchangeProduct.count', -1) do
      delete pe_exchange_product_url(@pe_exchange_product)
    end

    assert_redirected_to pe_exchange_products_url
  end
end
