require "application_system_test_case"

class PeExchangesTest < ApplicationSystemTestCase
  setup do
    @pe_exchange = pe_exchanges(:one)
  end

  test "visiting the index" do
    visit pe_exchanges_url
    assert_selector "h1", text: "Pe Exchanges"
  end

  test "creating a Pe exchange" do
    visit pe_exchanges_url
    click_on "New Pe Exchange"

    fill_in "Address1", with: @pe_exchange.address1
    fill_in "Address2", with: @pe_exchange.address2
    fill_in "City", with: @pe_exchange.city
    fill_in "Id card", with: @pe_exchange.id_card
    fill_in "Name", with: @pe_exchange.name
    fill_in "Phone", with: @pe_exchange.phone
    fill_in "Prize date", with: @pe_exchange.prize_date
    fill_in "Product d", with: @pe_exchange.product_d
    fill_in "State", with: @pe_exchange.state
    check "Status" if @pe_exchange.status
    fill_in "User", with: @pe_exchange.user_id
    fill_in "Zip", with: @pe_exchange.zip
    click_on "Create Pe exchange"

    assert_text "Pe exchange was successfully created"
    click_on "Back"
  end

  test "updating a Pe exchange" do
    visit pe_exchanges_url
    click_on "Edit", match: :first

    fill_in "Address1", with: @pe_exchange.address1
    fill_in "Address2", with: @pe_exchange.address2
    fill_in "City", with: @pe_exchange.city
    fill_in "Id card", with: @pe_exchange.id_card
    fill_in "Name", with: @pe_exchange.name
    fill_in "Phone", with: @pe_exchange.phone
    fill_in "Prize date", with: @pe_exchange.prize_date
    fill_in "Product d", with: @pe_exchange.product_d
    fill_in "State", with: @pe_exchange.state
    check "Status" if @pe_exchange.status
    fill_in "User", with: @pe_exchange.user_id
    fill_in "Zip", with: @pe_exchange.zip
    click_on "Update Pe exchange"

    assert_text "Pe exchange was successfully updated"
    click_on "Back"
  end

  test "destroying a Pe exchange" do
    visit pe_exchanges_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pe exchange was successfully destroyed"
  end
end
