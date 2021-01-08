require "application_system_test_case"

class PeRecommendsTest < ApplicationSystemTestCase
  setup do
    @pe_recommend = pe_recommends(:one)
  end

  test "visiting the index" do
    visit pe_recommends_url
    assert_selector "h1", text: "Pe Recommends"
  end

  test "creating a Pe recommend" do
    visit pe_recommends_url
    click_on "New Pe Recommend"

    fill_in "Order", with: @pe_recommend.order
    fill_in "Product", with: @pe_recommend.pe_product_id
    click_on "Create Pe recommend"

    assert_text "Pe recommend was successfully created"
    click_on "Back"
  end

  test "updating a Pe recommend" do
    visit pe_recommends_url
    click_on "Edit", match: :first

    fill_in "Order", with: @pe_recommend.order
    fill_in "Product", with: @pe_recommend.pe_product_id
    click_on "Update Pe recommend"

    assert_text "Pe recommend was successfully updated"
    click_on "Back"
  end

  test "destroying a Pe recommend" do
    visit pe_recommends_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pe recommend was successfully destroyed"
  end
end
