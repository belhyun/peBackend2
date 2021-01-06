require "application_system_test_case"

class PeExchangeProductsTest < ApplicationSystemTestCase
  setup do
    @pe_exchange_product = pe_exchange_products(:one)
  end

  test "visiting the index" do
    visit pe_exchange_products_url
    assert_selector "h1", text: "Pe Exchange Products"
  end

  test "creating a Pe exchange product" do
    visit pe_exchange_products_url
    click_on "New Pe Exchange Product"

    fill_in "Group", with: @pe_exchange_product.group_id
    fill_in "Limit", with: @pe_exchange_product.limit
    fill_in "Order", with: @pe_exchange_product.order
    fill_in "Price", with: @pe_exchange_product.price
    fill_in "Price type", with: @pe_exchange_product.price_type
    fill_in "Product", with: @pe_exchange_product.product_id
    fill_in "Status", with: @pe_exchange_product.status
    click_on "Create Pe exchange product"

    assert_text "Pe exchange product was successfully created"
    click_on "Back"
  end

  test "updating a Pe exchange product" do
    visit pe_exchange_products_url
    click_on "Edit", match: :first

    fill_in "Group", with: @pe_exchange_product.group_id
    fill_in "Limit", with: @pe_exchange_product.limit
    fill_in "Order", with: @pe_exchange_product.order
    fill_in "Price", with: @pe_exchange_product.price
    fill_in "Price type", with: @pe_exchange_product.price_type
    fill_in "Product", with: @pe_exchange_product.product_id
    fill_in "Status", with: @pe_exchange_product.status
    click_on "Update Pe exchange product"

    assert_text "Pe exchange product was successfully updated"
    click_on "Back"
  end

  test "destroying a Pe exchange product" do
    visit pe_exchange_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pe exchange product was successfully destroyed"
  end
end
