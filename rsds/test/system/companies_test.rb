require "application_system_test_case"

class CompaniesTest < ApplicationSystemTestCase
  setup do
    @company = companies(:one)
  end

  test "visiting the index" do
    visit companies_url
    assert_selector "h1", text: "Companies"
  end

  test "should create company" do
    visit companies_url
    click_on "New company"

    fill_in "Buildingnumber", with: @company.buildingNumber
    fill_in "City", with: @company.city
    fill_in "Companyid", with: @company.companyID
    fill_in "Companynip", with: @company.companyNIP
    fill_in "Companyname", with: @company.companyName
    fill_in "Localnumber", with: @company.localNumber
    fill_in "Postalcode", with: @company.postalCode
    fill_in "Street", with: @company.street
    click_on "Create Company"

    assert_text "Company was successfully created"
    click_on "Back"
  end

  test "should update Company" do
    visit company_url(@company)
    click_on "Edit this company", match: :first

    fill_in "Buildingnumber", with: @company.buildingNumber
    fill_in "City", with: @company.city
    fill_in "Companyid", with: @company.companyID
    fill_in "Companynip", with: @company.companyNIP
    fill_in "Companyname", with: @company.companyName
    fill_in "Localnumber", with: @company.localNumber
    fill_in "Postalcode", with: @company.postalCode
    fill_in "Street", with: @company.street
    click_on "Update Company"

    assert_text "Company was successfully updated"
    click_on "Back"
  end

  test "should destroy Company" do
    visit company_url(@company)
    click_on "Destroy this company", match: :first

    assert_text "Company was successfully destroyed"
  end
end
