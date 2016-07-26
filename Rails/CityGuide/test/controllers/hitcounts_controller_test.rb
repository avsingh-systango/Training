require 'test_helper'

class HitcountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hitcount = hitcounts(:one)
  end

  test "should get index" do
    get hitcounts_url
    assert_response :success
  end

  test "should get new" do
    get new_hitcount_url
    assert_response :success
  end

  test "should create hitcount" do
    assert_difference('Hitcount.count') do
      post hitcounts_url, params: { hitcount: { hitable_id: @hitcount.hitable_id, hitable_type: @hitcount.hitable_type, user_id: @hitcount.user_id } }
    end

    assert_redirected_to hitcount_url(Hitcount.last)
  end

  test "should show hitcount" do
    get hitcount_url(@hitcount)
    assert_response :success
  end

  test "should get edit" do
    get edit_hitcount_url(@hitcount)
    assert_response :success
  end

  test "should update hitcount" do
    patch hitcount_url(@hitcount), params: { hitcount: { hitable_id: @hitcount.hitable_id, hitable_type: @hitcount.hitable_type, user_id: @hitcount.user_id } }
    assert_redirected_to hitcount_url(@hitcount)
  end

  test "should destroy hitcount" do
    assert_difference('Hitcount.count', -1) do
      delete hitcount_url(@hitcount)
    end

    assert_redirected_to hitcounts_url
  end
end
