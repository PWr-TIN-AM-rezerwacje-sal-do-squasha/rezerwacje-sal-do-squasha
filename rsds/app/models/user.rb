class User < ApplicationRecord
    has_many :players
    has_many :reservations, through: :players
    has_secure_password
end
