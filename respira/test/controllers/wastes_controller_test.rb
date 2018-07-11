require 'test_helper'

class WastesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @waste = wastes(:one)
  end

  test "should get index" do
    get wastes_url
    assert_response :success
  end

  test "should get new" do
    get new_waste_url
    assert_response :success
  end

  test "should create waste" do
    assert_difference('Waste.count') do
      post wastes_url, params: { waste: { waste_description: @waste.waste_description, waste_img: @waste.waste_img, waste_material: @waste.waste_material, waste_name: @waste.waste_name } }
    end

    assert_redirected_to waste_url(Waste.last)
  end

  test "should show waste" do
    get waste_url(@waste)
    assert_response :success
  end

  test "should get edit" do
    get edit_waste_url(@waste)
    assert_response :success
  end

  test "should update waste" do
    patch waste_url(@waste), params: { waste: { waste_description: @waste.waste_description, waste_img: @waste.waste_img, waste_material: @waste.waste_material, waste_name: @waste.waste_name } }
    assert_redirected_to waste_url(@waste)
  end

  test "should destroy waste" do
    assert_difference('Waste.count', -1) do
      delete waste_url(@waste)
    end

    assert_redirected_to wastes_url
  end
end
