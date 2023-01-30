class Court < ApplicationRecord
    has_many :reservations
    
    validates :courtNumber, presence: true, uniqueness: false, length: { in: 3..50 }
end
