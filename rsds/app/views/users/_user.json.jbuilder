json.extract! user, :id, :userName, :userSurname, :password_digest, :userEmail, :userBirthDate, :userPhoneNumber, :created_at, :updated_at
json.url user_url(user, format: :json)
