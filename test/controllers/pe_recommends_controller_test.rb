require 'test_helper'

class PeRecommendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pe_recommend = pe_recommends(:one)
  end

  test "should get index" do
    get pe_recommends_url
    assert_response :success
  end

  test "should get new" do
    get new_pe_recommend_url
    assert_response :success
  end

  test "should create pe_recommend" do
    assert_difference('PeRecommend.count') do
      post pe_recommends_url, params: { pe_recommend: { order: @pe_recommend.order, pe_product_id: @pe_recommend.pe_product_id } }
    end

    assert_redirected_to pe_recommend_url(PeRecommend.last)
  end

  test "should show pe_recommend" do
    get pe_recommend_url(@pe_recommend)
    assert_response :success
  end

  test "should get edit" do
    get edit_pe_recommend_url(@pe_recommend)
    assert_response :success
  end

  test "should update pe_recommend" do
    patch pe_recommend_url(@pe_recommend), params: { pe_recommend: { order: @pe_recommend.order, pe_product_id: @pe_recommend.pe_product_id } }
    assert_redirected_to pe_recommend_url(@pe_recommend)
  end

  test "should destroy pe_recommend" do
    assert_difference('PeRecommend.count', -1) do
      delete pe_recommend_url(@pe_recommend)
    end

    assert_redirected_to pe_recommends_url
  end
end
