require "application_system_test_case"

class FacilitiesTest < ApplicationSystemTestCase
  setup do
    @facility = facilities(:one)
  end

  test "visiting the index" do
    visit facilities_url
    assert_selector "h1", text: "Facilities"
  end

  test "should create facility" do
    visit facilities_url
    click_on "New facility"

    fill_in "Buildingnumber", with: @facility.buildingNumber
    fill_in "City", with: @facility.city
    fill_in "Closingtime", with: @facility.closingTime
    fill_in "Companyid", with: @facility.companyID_id
    fill_in "Facilityname", with: @facility.facilityName
    fill_in "Houerlyprice", with: @facility.houerlyPrice
    fill_in "Localnumber", with: @facility.localNumber
    fill_in "Openingtime", with: @facility.openingTime
    fill_in "Postalcode", with: @facility.postalCode
    fill_in "Street", with: @facility.street
    click_on "Create Facility"

    assert_text "Facility was successfully created"
    click_on "Back"
  end

  test "should update Facility" do
    visit facility_url(@facility)
    click_on "Edit this facility", match: :first

    fill_in "Buildingnumber", with: @facility.buildingNumber
    fill_in "City", with: @facility.city
    fill_in "Closingtime", with: @facility.closingTime
    fill_in "Companyid", with: @facility.companyID_id
    fill_in "Facilityname", with: @facility.facilityName
    fill_in "Houerlyprice", with: @facility.houerlyPrice
    fill_in "Localnumber", with: @facility.localNumber
    fill_in "Openingtime", with: @facility.openingTime
    fill_in "Postalcode", with: @facility.postalCode
    fill_in "Street", with: @facility.street
    click_on "Update Facility"

    assert_text "Facility was successfully updated"
    click_on "Back"
  end

  test "should destroy Facility" do
    visit facility_url(@facility)
    click_on "Destroy this facility", match: :first

    assert_text "Facility was successfully destroyed"
  end
end
