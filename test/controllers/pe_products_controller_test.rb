require 'test_helper'

class PeProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pe_product = pe_products(:one)
  end

  test "should get index" do
    get pe_products_url
    assert_response :success
  end

  test "should get new" do
    get new_pe_product_url
    assert_response :success
  end

  test "should create pe_product" do
    assert_difference('PeProduct.count') do
      post pe_products_url, params: { pe_product: { alarm: @pe_product.alarm, cash_price: @pe_product.cash_price, coin_price: @pe_product.coin_price, description: @pe_product.description, image: @pe_product.image, name: @pe_product.name, product_type: @pe_product.product_type, reward_type: @pe_product.reward_type, reward_value: @pe_product.reward_value } }
    end

    assert_redirected_to pe_product_url(PeProduct.last)
  end

  test "should show pe_product" do
    get pe_product_url(@pe_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_pe_product_url(@pe_product)
    assert_response :success
  end

  test "should update pe_product" do
    patch pe_product_url(@pe_product), params: { pe_product: { alarm: @pe_product.alarm, cash_price: @pe_product.cash_price, coin_price: @pe_product.coin_price, description: @pe_product.description, image: @pe_product.image, name: @pe_product.name, product_type: @pe_product.product_type, reward_type: @pe_product.reward_type, reward_value: @pe_product.reward_value } }
    assert_redirected_to pe_product_url(@pe_product)
  end

  test "should destroy pe_product" do
    assert_difference('PeProduct.count', -1) do
      delete pe_product_url(@pe_product)
    end

    assert_redirected_to pe_products_url
  end
end
