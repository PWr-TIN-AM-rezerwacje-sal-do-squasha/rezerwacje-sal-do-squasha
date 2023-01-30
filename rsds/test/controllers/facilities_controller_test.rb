require "test_helper"

class FacilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @facility = facilities(:one)
  end

  test "should get index" do
    get facilities_url
    assert_response :success
  end

  test "should get new" do
    get new_facility_url
    assert_response :success
  end

  test "should create facility" do
    assert_difference("Facility.count") do
      post facilities_url, params: { facility: { buildingNumber: @facility.buildingNumber, city: @facility.city, closingTime: @facility.closingTime, companyID_id: @facility.companyID_id, facilityName: @facility.facilityName, houerlyPrice: @facility.houerlyPrice, localNumber: @facility.localNumber, openingTime: @facility.openingTime, postalCode: @facility.postalCode, street: @facility.street } }
    end

    assert_redirected_to facility_url(Facility.last)
  end

  test "should show facility" do
    get facility_url(@facility)
    assert_response :success
  end

  test "should get edit" do
    get edit_facility_url(@facility)
    assert_response :success
  end

  test "should update facility" do
    patch facility_url(@facility), params: { facility: { buildingNumber: @facility.buildingNumber, city: @facility.city, closingTime: @facility.closingTime, companyID_id: @facility.companyID_id, facilityName: @facility.facilityName, houerlyPrice: @facility.houerlyPrice, localNumber: @facility.localNumber, openingTime: @facility.openingTime, postalCode: @facility.postalCode, street: @facility.street } }
    assert_redirected_to facility_url(@facility)
  end

  test "should destroy facility" do
    assert_difference("Facility.count", -1) do
      delete facility_url(@facility)
    end

    assert_redirected_to facilities_url
  end
end
