class User < ApplicationRecord
    has_many :players
    has_many :reservations, through: :players

    validates :userName, presence: true, uniqueness: false, format: { with: /\A[A-Z]{1}[a-z]+\z/, message:"must start with capital letter, letters only" }, length: { in: 3..50 }
    validates :userSurname, presence: true, uniqueness: false, format: { with: /\A[A-Z]{1}[a-z]+\z/, message:"must start with capital letter, letters only" }, length: { in: 3..50 }
    validates :password_digest, presence: true, uniqueness: false, length: { in: 3..50 }, format: { with:  /(?=.*\d)(?=.*[a-z])(?=.*[A-Z])/, message:"1 char of A-Z, a-z and 0-9"}
    validates :userEmail, presence: true, uniqueness: false, format: { with: /\A[A-Za-z0-9]+@[A-Za-z0-9]+.[A-Za-z0-9]+\z/, message:" must contain '@' and '.'"}, length: { in: 3..50 }
    validates :userBirthDate, presence: true, uniqueness: false
    validate :validate_age
    validates :userPhoneNumber, presence: true, uniqueness: false, format: {with: /[0-9]{9}/, message:" must contain exactly 9 digits"}

    private

    def validate_age
        if userBirthDate.present? && userBirthDate < 100.years.ago.to_date
            errors.add(:userBirthDate, 'must be greater than 100 years ago')
        end
    end
end
