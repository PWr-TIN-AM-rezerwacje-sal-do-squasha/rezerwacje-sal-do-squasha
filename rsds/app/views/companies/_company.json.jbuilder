json.extract! company, :id, :companyID, :companyName, :companyNIP, :city, :street, :buildingNumber, :localNumber, :postalCode, :created_at, :updated_at
json.url company_url(company, format: :json)
