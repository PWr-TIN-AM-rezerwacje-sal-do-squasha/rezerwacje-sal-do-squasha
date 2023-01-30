class Company < ApplicationRecord
    
    validates :companyName, presence: true, uniqueness: false, length: { in: 3..50 }, format: { with: /\A[A-Za-z]+(?: [a-zA-Z]+)*\z/, message: "must start with capital letter, letters only" }
    validates :city, presence: true, uniqueness: false, length: { in: 3..50 }, format: { with: /\A[A-Za-z]+(?: [a-zA-Z]+)*\z/, message: "only letters and spaces" }
    validates :street, presence: true, uniqueness: false, length: { in: 3..50 }, format: { with: /\A[0-9A-Za-z]+(?: [0-9a-zA-Z]+)*\z/, message: "only letters, digits and spaces" }
    validates :buildingNumber, presence: true, uniqueness: false, length: { maximum: 5 }
    validates :localNumber, presence: true, uniqueness: false, length: { maximum: 5 }, format: { with: /\A[0-9]+[a-z]{1}\z/, message: "only digits and letters (00 or 00a)" }
    validates :postalCode, presence: true, uniqueness: false, format: { with: /\A[0-9]{3}-[0-9]{2}\z/, message: "must look like 00-000" }
end