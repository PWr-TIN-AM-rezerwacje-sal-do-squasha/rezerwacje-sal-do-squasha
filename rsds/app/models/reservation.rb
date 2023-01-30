class Reservation < ApplicationRecord
    belongs_to :court
    has_many :transactions
    has_many :players
    has_many :users, through: :players

    validates :reservationDate, presence: true, uniqueness: false
    validates :reservationStartTime, presence: true, uniqueness: false, comparison: { greater_than: DateTime.now }
    validates :reservationEndTime, presence: true, uniqueness: false, comparison: { greater_than: :reservationStartTime }
    validates :cost, presence: true, uniqueness: false, length: { maximum: 5 }
end
