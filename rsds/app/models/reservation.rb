class Reservation < ApplicationRecord
    belongs_to :court
    has_many :transactions
    has_many :players
    has_many :users, through: :players
end
