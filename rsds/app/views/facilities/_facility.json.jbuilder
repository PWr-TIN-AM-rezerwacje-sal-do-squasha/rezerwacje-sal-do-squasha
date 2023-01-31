json.extract! facility, :id, :facilityName, :city, :street, :buildingNumber, :localNumber, :postalCode, :openingTime, :closingTime, :houerlyPrice, :created_at, :updated_at
json.url facility_url(facility, format: :json)
