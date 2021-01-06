require "application_system_test_case"

class PeTradeExchangesTest < ApplicationSystemTestCase
  setup do
    @pe_trade_exchange = pe_trade_exchanges(:one)
  end

  test "visiting the index" do
    visit pe_trade_exchanges_url
    assert_selector "h1", text: "Pe Trade Exchanges"
  end

  test "creating a Pe trade exchange" do
    visit pe_trade_exchanges_url
    click_on "New Pe Trade Exchange"

    fill_in "Need type", with: @pe_trade_exchange.need_type
    fill_in "Need value", with: @pe_trade_exchange.need_value
    fill_in "Order", with: @pe_trade_exchange.order
    fill_in "Target type", with: @pe_trade_exchange.target_type
    fill_in "Target value", with: @pe_trade_exchange.target_value
    click_on "Create Pe trade exchange"

    assert_text "Pe trade exchange was successfully created"
    click_on "Back"
  end

  test "updating a Pe trade exchange" do
    visit pe_trade_exchanges_url
    click_on "Edit", match: :first

    fill_in "Need type", with: @pe_trade_exchange.need_type
    fill_in "Need value", with: @pe_trade_exchange.need_value
    fill_in "Order", with: @pe_trade_exchange.order
    fill_in "Target type", with: @pe_trade_exchange.target_type
    fill_in "Target value", with: @pe_trade_exchange.target_value
    click_on "Update Pe trade exchange"

    assert_text "Pe trade exchange was successfully updated"
    click_on "Back"
  end

  test "destroying a Pe trade exchange" do
    visit pe_trade_exchanges_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pe trade exchange was successfully destroyed"
  end
end
