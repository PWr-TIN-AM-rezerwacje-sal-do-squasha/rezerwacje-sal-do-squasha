json.extract! reservation, :id, :lookingForPlayer, :reservationDate, :reservationStartTime, :reservationEndTime, :cost, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
