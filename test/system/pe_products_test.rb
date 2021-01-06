require "application_system_test_case"

class PeProductsTest < ApplicationSystemTestCase
  setup do
    @pe_product = pe_products(:one)
  end

  test "visiting the index" do
    visit pe_products_url
    assert_selector "h1", text: "Pe Products"
  end

  test "creating a Pe product" do
    visit pe_products_url
    click_on "New Pe Product"

    check "Alarm" if @pe_product.alarm
    fill_in "Cash price", with: @pe_product.cash_price
    fill_in "Coin price", with: @pe_product.coin_price
    fill_in "Description", with: @pe_product.description
    fill_in "Image", with: @pe_product.image
    fill_in "Name", with: @pe_product.name
    fill_in "Product type", with: @pe_product.product_type
    fill_in "Reward type", with: @pe_product.reward_type
    fill_in "Reward value", with: @pe_product.reward_value
    click_on "Create Pe product"

    assert_text "Pe product was successfully created"
    click_on "Back"
  end

  test "updating a Pe product" do
    visit pe_products_url
    click_on "Edit", match: :first

    check "Alarm" if @pe_product.alarm
    fill_in "Cash price", with: @pe_product.cash_price
    fill_in "Coin price", with: @pe_product.coin_price
    fill_in "Description", with: @pe_product.description
    fill_in "Image", with: @pe_product.image
    fill_in "Name", with: @pe_product.name
    fill_in "Product type", with: @pe_product.product_type
    fill_in "Reward type", with: @pe_product.reward_type
    fill_in "Reward value", with: @pe_product.reward_value
    click_on "Update Pe product"

    assert_text "Pe product was successfully updated"
    click_on "Back"
  end

  test "destroying a Pe product" do
    visit pe_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pe product was successfully destroyed"
  end
end
