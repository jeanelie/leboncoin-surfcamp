require 'test_helper'

class SmallAdsControllerTest < ActionController::TestCase
  setup do
    @small_ad = small_ads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:small_ads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create small_ad" do
    assert_difference('SmallAd.count') do
      post :create, small_ad: { category_id: @small_ad.category_id, name: @small_ad.name, price: @small_ad.price }
    end

    assert_redirected_to small_ad_path(assigns(:small_ad))
  end

  test "should show small_ad" do
    get :show, id: @small_ad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @small_ad
    assert_response :success
  end

  test "should update small_ad" do
    patch :update, id: @small_ad, small_ad: { category_id: @small_ad.category_id, name: @small_ad.name, price: @small_ad.price }
    assert_redirected_to small_ad_path(assigns(:small_ad))
  end

  test "should destroy small_ad" do
    assert_difference('SmallAd.count', -1) do
      delete :destroy, id: @small_ad
    end

    assert_redirected_to small_ads_path
  end
end
