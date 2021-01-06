require "application_system_test_case"

class PeExchangeCommonsTest < ApplicationSystemTestCase
  setup do
    @pe_exchange_common = pe_exchange_commons(:one)
  end

  test "visiting the index" do
    visit pe_exchange_commons_url
    assert_selector "h1", text: "Pe Exchange Commons"
  end

  test "creating a Pe exchange common" do
    visit pe_exchange_commons_url
    click_on "New Pe Exchange Common"

    fill_in "Banner", with: @pe_exchange_common.banner
    fill_in "Interval", with: @pe_exchange_common.interval
    check "Maintenance" if @pe_exchange_common.maintenance
    click_on "Create Pe exchange common"

    assert_text "Pe exchange common was successfully created"
    click_on "Back"
  end

  test "updating a Pe exchange common" do
    visit pe_exchange_commons_url
    click_on "Edit", match: :first

    fill_in "Banner", with: @pe_exchange_common.banner
    fill_in "Interval", with: @pe_exchange_common.interval
    check "Maintenance" if @pe_exchange_common.maintenance
    click_on "Update Pe exchange common"

    assert_text "Pe exchange common was successfully updated"
    click_on "Back"
  end

  test "destroying a Pe exchange common" do
    visit pe_exchange_commons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pe exchange common was successfully destroyed"
  end
end
