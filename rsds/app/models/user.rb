class User < ApplicationRecord
    has_many :players
    has_many :reservations, through: :players
end
